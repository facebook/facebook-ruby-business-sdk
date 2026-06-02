# Copyright (c) 2017-present, Facebook, Inc. All rights reserved.
#
# You are hereby granted a non-exclusive, worldwide, royalty-free license to use,
# copy, modify, and distribute this software in source code or binary form for use
# in connection with the web services and APIs provided by Facebook.
#
# As with any software that integrates with the Facebook platform, your use of
# this software is subject to the Facebook Platform Policy
# [http://developers.facebook.com/policy/]. This copyright notice shall be
# included in all copies or substantial portions of the software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# FacebookAds::ServerSide::Event is autoloaded, so requiring 'capi_param_builder'
# is deferred until the first Event reference. Force-load it here so tests can
# stub `::ParamBuilder.new` before constructing an Event.
require 'capi_param_builder'


# Builds a stub that quacks like a real ParamBuilder with given extracted
# values. `process_request_from_context` is a no-op. Defaults every getter
# to nil so unrelated tests do not see auto-stubbed truthy values leak into
# the Event payload.
def stub_param_builder(fbc: nil, fbp: nil, event_source_url: nil, referrer_url: nil)
  pb = instance_double('ParamBuilder')
  allow(pb).to receive(:process_request_from_context)
  allow(pb).to receive(:get_fbc).and_return(fbc)
  allow(pb).to receive(:get_fbp).and_return(fbp)
  allow(pb).to receive(:get_event_source_url).and_return(event_source_url)
  allow(pb).to receive(:get_referrer_url).and_return(referrer_url)
  pb
end


RSpec.describe 'FacebookAds::ServerSide::Event#set_request_context' do
  describe 'with a mocked ParamBuilder' do
    # ----- set_request_context contract -------------------------------
    it 'stores the context and Preference' do
      context = { req: 'opaque' }
      pref = FacebookAds::ServerSide::Preference.new(
        is_fbc_allowed: false, is_fbp_allowed: true,
        is_client_ip_address_allowed: true, is_referrer_url_allowed: false,
      )
      allow(::ParamBuilder).to receive(:new).and_return(stub_param_builder)

      event = FacebookAds::ServerSide::Event.new(event_name: 'Lead', event_time: 1700000001)
      returned = event.set_request_context(context, preference: pref)

      expect(event.request_context).to equal(context)
      expect(event.preference).to equal(pref)
      expect(returned).to equal(event)
    end

    it 'defaults to an allow-all Preference when none is provided' do
      allow(::ParamBuilder).to receive(:new).and_return(stub_param_builder)

      event = FacebookAds::ServerSide::Event.new(event_name: 'PageView', event_time: 1700000002)
      event.set_request_context({})

      pref = event.preference
      expect(pref).to be_a(FacebookAds::ServerSide::Preference)
      expect(pref.is_fbc_allowed).to eq(true)
      expect(pref.is_fbp_allowed).to eq(true)
      expect(pref.is_client_ip_address_allowed).to eq(true)
      expect(pref.is_referrer_url_allowed).to eq(true)
      expect(pref.is_event_source_url_allowed).to eq(true)
    end

    it 'raises when preference is not a Preference instance' do
      event = FacebookAds::ServerSide::Event.new(event_name: 'PageView', event_time: 1700000003)
      expect {
        event.set_request_context({}, preference: 'not-a-preference')
      }.to raise_error(ArgumentError)
    end

    # ----- normalize() without set_request_context --------------------
    it 'normalize() without set_request_context leaves user_data untouched' do
      ud = FacebookAds::ServerSide::UserData.new(email: 'a@example.com')
      event = FacebookAds::ServerSide::Event.new(
        event_name: 'Purchase',
        event_time: 1700000000,
        user_data: ud,
      )
      payload = event.normalize
      expect(payload['user_data']).not_to have_key('fbc')
      expect(payload['user_data']).not_to have_key('fbp')
    end

    it 'normalize() with no user_data and no request context is safe' do
      event = FacebookAds::ServerSide::Event.new(event_name: 'PageView', event_time: 1700000004)
      payload = event.normalize
      expect(payload['event_name']).to eq('PageView')
    end

    # ----- normalize() auto-populates fbc/fbp -------------------------
    it 'normalize() auto-populates fbc from the ParamBuilder' do
      allow(::ParamBuilder).to receive(:new)
        .and_return(stub_param_builder(fbc: 'fb.1.1700000000000.AbCdEf12345'))

      event = FacebookAds::ServerSide::Event.new(event_name: 'PageView', event_time: 1700000010)
      event.set_request_context({})

      payload = event.normalize
      expect(payload['user_data']['fbc']).to eq('fb.1.1700000000000.AbCdEf12345')
    end

    it 'normalize() auto-populates fbp from the ParamBuilder' do
      allow(::ParamBuilder).to receive(:new)
        .and_return(stub_param_builder(fbp: 'fb.1.1700000000000.987654321'))

      event = FacebookAds::ServerSide::Event.new(event_name: 'PageView', event_time: 1700000011)
      event.set_request_context({})

      payload = event.normalize
      expect(payload['user_data']['fbp']).to eq('fb.1.1700000000000.987654321')
    end

    it 'caller-supplied fbc takes precedence over the builder' do
      allow(::ParamBuilder).to receive(:new).and_return(stub_param_builder(fbc: 'BUILDER_FBC'))

      event = FacebookAds::ServerSide::Event.new(
        event_name: 'Lead',
        event_time: 1700000020,
        user_data: FacebookAds::ServerSide::UserData.new(fbc: 'CALLER_FBC'),
      )
      event.set_request_context({})

      expect(event.normalize['user_data']['fbc']).to eq('CALLER_FBC')
    end

    it 'caller-supplied fbp takes precedence over the builder' do
      allow(::ParamBuilder).to receive(:new).and_return(stub_param_builder(fbp: 'BUILDER_FBP'))

      event = FacebookAds::ServerSide::Event.new(
        event_name: 'Lead',
        event_time: 1700000021,
        user_data: FacebookAds::ServerSide::UserData.new(fbp: 'CALLER_FBP'),
      )
      event.set_request_context({})

      expect(event.normalize['user_data']['fbp']).to eq('CALLER_FBP')
    end

    it 'Preference is_fbp_allowed=false gates fbp but keeps fbc' do
      allow(::ParamBuilder).to receive(:new)
        .and_return(stub_param_builder(fbc: 'WITHFBC', fbp: 'WITHFBP'))
      pref = FacebookAds::ServerSide::Preference.new(
        is_fbc_allowed: true, is_fbp_allowed: false,
        is_client_ip_address_allowed: true, is_referrer_url_allowed: true,
      )
      event = FacebookAds::ServerSide::Event.new(event_name: 'PageView', event_time: 1700000030)
      event.set_request_context({}, preference: pref)

      payload = event.normalize
      expect(payload['user_data']['fbc']).to eq('WITHFBC')
      expect(payload['user_data']).not_to have_key('fbp')
    end

    it 'Preference all-false suppresses every auto-populated field' do
      allow(::ParamBuilder).to receive(:new)
        .and_return(stub_param_builder(
          fbc: 'XX', fbp: 'YY',
          event_source_url: 'https://shop.example.com/cart',
          referrer_url: 'https://referrer.example.com/',
        ))
      pref = FacebookAds::ServerSide::Preference.new(
        is_fbc_allowed: false, is_fbp_allowed: false,
        is_client_ip_address_allowed: false, is_referrer_url_allowed: false,
        is_event_source_url_allowed: false,
      )
      event = FacebookAds::ServerSide::Event.new(event_name: 'PageView', event_time: 1700000031)
      event.set_request_context({}, preference: pref)

      payload = event.normalize
      ud = payload['user_data'] || {}
      expect(ud).not_to have_key('fbc')
      expect(ud).not_to have_key('fbp')
      expect(payload).not_to have_key('event_source_url')
      expect(payload).not_to have_key('referrer_url')
    end

    # ----- event_source_url auto-population --------------------------
    it 'normalize() auto-populates event_source_url from the ParamBuilder' do
      allow(::ParamBuilder).to receive(:new)
        .and_return(stub_param_builder(event_source_url: 'https://shop.example.com/cart'))

      event = FacebookAds::ServerSide::Event.new(event_name: 'PageView', event_time: 1700000060)
      event.set_request_context({})

      payload = event.normalize
      expect(payload['event_source_url']).to eq('https://shop.example.com/cart')
    end

    it 'caller-supplied event_source_url takes precedence over the builder' do
      allow(::ParamBuilder).to receive(:new)
        .and_return(stub_param_builder(event_source_url: 'https://from-builder/'))

      event = FacebookAds::ServerSide::Event.new(
        event_name: 'Lead',
        event_time: 1700000061,
        event_source_url: 'https://from-caller/',
      )
      event.set_request_context({})

      expect(event.normalize['event_source_url']).to eq('https://from-caller/')
    end

    # ----- referrer_url auto-population ------------------------------
    it 'normalize() auto-populates referrer_url from the ParamBuilder' do
      allow(::ParamBuilder).to receive(:new)
        .and_return(stub_param_builder(referrer_url: 'https://google.com/search?q=foo'))

      event = FacebookAds::ServerSide::Event.new(event_name: 'PageView', event_time: 1700000070)
      event.set_request_context({})

      payload = event.normalize
      expect(payload['referrer_url']).to eq('https://google.com/search?q=foo')
    end

    it 'caller-supplied referrer_url takes precedence over the builder' do
      allow(::ParamBuilder).to receive(:new)
        .and_return(stub_param_builder(referrer_url: 'https://builder.example.com/'))

      event = FacebookAds::ServerSide::Event.new(
        event_name: 'Lead',
        event_time: 1700000071,
        referrer_url: 'https://caller.example.com/',
      )
      event.set_request_context({})

      expect(event.normalize['referrer_url']).to eq('https://caller.example.com/')
    end

    it 'Preference is_referrer_url_allowed=false gates referrer_url' do
      allow(::ParamBuilder).to receive(:new)
        .and_return(stub_param_builder(
          fbc: 'WITHFBC', referrer_url: 'https://builder.example.com/',
        ))
      pref = FacebookAds::ServerSide::Preference.new(
        is_fbc_allowed: true, is_fbp_allowed: true,
        is_client_ip_address_allowed: true, is_referrer_url_allowed: false,
        is_event_source_url_allowed: true,
      )
      event = FacebookAds::ServerSide::Event.new(event_name: 'PageView', event_time: 1700000072)
      event.set_request_context({}, preference: pref)

      payload = event.normalize
      expect(payload['user_data']['fbc']).to eq('WITHFBC')
      expect(payload).not_to have_key('referrer_url')
    end

    it 'Preference is_event_source_url_allowed=false gates event_source_url' do
      allow(::ParamBuilder).to receive(:new)
        .and_return(stub_param_builder(
          fbc: 'WITHFBC', event_source_url: 'https://from-builder/',
        ))
      pref = FacebookAds::ServerSide::Preference.new(
        is_fbc_allowed: true, is_fbp_allowed: true,
        is_client_ip_address_allowed: true, is_referrer_url_allowed: true,
        is_event_source_url_allowed: false,
      )
      event = FacebookAds::ServerSide::Event.new(event_name: 'PageView', event_time: 1700000062)
      event.set_request_context({}, preference: pref)

      payload = event.normalize
      expect(payload['user_data']['fbc']).to eq('WITHFBC')
      expect(payload).not_to have_key('event_source_url')
    end

    # ----- call-order independence ------------------------------------
    it 'order-independent: user_data assigned before set_request_context' do
      allow(::ParamBuilder).to receive(:new)
        .and_return(stub_param_builder(fbc: 'FROM_BUILDER'))

      event = FacebookAds::ServerSide::Event.new(event_name: 'AddToCart', event_time: 1700000040)
      event.user_data = FacebookAds::ServerSide::UserData.new(email: 'a@b.com')
      event.set_request_context({})

      ud = event.normalize['user_data']
      expect(ud['fbc']).to eq('FROM_BUILDER')
      expect(ud['em'].length).to eq(1)
    end

    it 'order-independent: set_request_context before user_data assignment' do
      allow(::ParamBuilder).to receive(:new)
        .and_return(stub_param_builder(fbc: 'FROM_BUILDER'))

      event = FacebookAds::ServerSide::Event.new(event_name: 'AddToCart', event_time: 1700000041)
      event.set_request_context({})
      event.user_data = FacebookAds::ServerSide::UserData.new(email: 'a@b.com')

      ud = event.normalize['user_data']
      expect(ud['fbc']).to eq('FROM_BUILDER')
      expect(ud['em'].length).to eq(1)
    end

    it 'normalize() output is stable across repeated calls' do
      allow(::ParamBuilder).to receive(:new)
        .and_return(stub_param_builder(fbc: 'IDEMPOTENT'))

      event = FacebookAds::ServerSide::Event.new(event_name: 'Lead', event_time: 1700000050)
      event.set_request_context({})

      first = event.normalize
      second = event.normalize
      expect(second).to eq(first)
    end
  end

  # ====================================================================
  # Guardrails against drift between the SDK and the upstream
  # `capi_param_builder_ruby` gem. These do NOT mock ParamBuilder —
  # they fail loudly if upstream renames or removes methods the SDK
  # depends on.
  # ====================================================================
  describe 'with the real ParamBuilder (no mocks)' do
    it 'ParamBuilder exposes the methods the SDK calls' do
      pb = ::ParamBuilder.new
      expect(pb).to respond_to(:process_request_from_context),
        'capi_param_builder_ruby must expose process_request_from_context; ' \
        'Event#set_request_context calls it. Bump the pinned version ' \
        'in facebookbusiness.gemspec if the upstream API has shifted.'
      expect(pb).to respond_to(:get_fbc)
      expect(pb).to respond_to(:get_fbp)
      expect(pb).to respond_to(:get_event_source_url)
      expect(pb).to respond_to(:get_referrer_url)
    end

    # Flat Rack-env hash — the shape RequestContextAdaptor actually reads
    # (HTTP_HOST / HTTP_COOKIE / HTTP_REFERER). A nested {headers: {...}} hash is
    # ignored by the adaptor, in which case the builder fabricates a fresh fbp
    # instead of extracting the cookie — so these use the flat shape and assert
    # on the supplied cookie value. The builder appends an appendix token to
    # every value, hence start_with rather than exact equality.
    real_env = {
      'HTTP_HOST' => 'shop.example.com',
      'HTTP_COOKIE' =>
        '_fbc=fb.1.1700000000000.AbCdEf12345; _fbp=fb.1.1700000000000.987654321',
      'HTTP_REFERER' => 'https://google.com/search?q=foo',
      'REQUEST_URI' => '/cart',
      'rack.url_scheme' => 'https',
    }.freeze

    it 'set_request_context then normalize populates fbp from a cookie' do
      event = FacebookAds::ServerSide::Event.new(event_name: 'PageView', event_time: 1700000000)
      event.set_request_context(real_env)
      fbp = event.normalize.dig('user_data', 'fbp')
      expect(fbp).not_to be_nil, 'fbp should be auto-populated by ParamBuilder'
      expect(fbp).to start_with('fb.1.1700000000000.987654321'),
        "fbp should be extracted from the _fbp cookie, got: #{fbp.inspect}"
    end

    it 'auto-populates fbc from the _fbc cookie via the real builder' do
      event = FacebookAds::ServerSide::Event.new(event_name: 'PageView', event_time: 1700000010)
      event.set_request_context(real_env)
      fbc = event.normalize.dig('user_data', 'fbc')
      expect(fbc).not_to be_nil
      expect(fbc).to start_with('fb.1.1700000000000.AbCdEf12345'),
        "fbc should be extracted from the _fbc cookie, got: #{fbc.inspect}"
    end

    it 'auto-populates referrer_url from the Referer header via the real builder' do
      event = FacebookAds::ServerSide::Event.new(event_name: 'PageView', event_time: 1700000070)
      event.set_request_context(real_env)
      ref = event.normalize['referrer_url']
      expect(ref).not_to be_nil
      expect(ref).to start_with('https://google.com/search?q=foo'),
        "referrer_url should be extracted from the Referer header, got: #{ref.inspect}"
    end

    it 'caller-supplied fbc takes precedence over the real builder' do
      event = FacebookAds::ServerSide::Event.new(
        event_name: 'Lead', event_time: 1700000020,
        user_data: FacebookAds::ServerSide::UserData.new(fbc: 'CALLER_FBC'),
      )
      event.set_request_context(real_env)
      expect(event.normalize['user_data']['fbc']).to eq('CALLER_FBC')
    end

    it 'auto-populates event_source_url from host + uri via the real builder' do
      event = FacebookAds::ServerSide::Event.new(event_name: 'PageView', event_time: 1700000060)
      event.set_request_context(real_env)
      esu = event.normalize['event_source_url']
      expect(esu).not_to be_nil
      expect(esu).to start_with('https://shop.example.com/cart'),
        "event_source_url should be built from host + uri, got: #{esu.inspect}"
    end
  end
end
