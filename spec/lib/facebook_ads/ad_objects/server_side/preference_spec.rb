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


RSpec.describe 'FacebookAds::ServerSide::Preference' do
  it 'default constructor allows everything' do
    p = FacebookAds::ServerSide::Preference.new
    expect(p.is_fbc_allowed).to eq(true)
    expect(p.is_fbp_allowed).to eq(true)
    expect(p.is_client_ip_address_allowed).to eq(true)
    expect(p.is_referrer_url_allowed).to eq(true)
  end

  it 'all-disallowed denies every field' do
    p = FacebookAds::ServerSide::Preference.new(
      is_fbc_allowed: false,
      is_fbp_allowed: false,
      is_client_ip_address_allowed: false,
      is_referrer_url_allowed: false,
    )
    expect(p.is_fbc_allowed).to eq(false)
    expect(p.is_fbp_allowed).to eq(false)
    expect(p.is_client_ip_address_allowed).to eq(false)
    expect(p.is_referrer_url_allowed).to eq(false)
  end

  it 'partial allowlist keeps requested flags true' do
    # Only fbc and client_ip_address allowed.
    p = FacebookAds::ServerSide::Preference.new(
      is_fbc_allowed: true,
      is_fbp_allowed: false,
      is_client_ip_address_allowed: true,
      is_referrer_url_allowed: false,
    )
    expect(p.is_fbc_allowed).to eq(true)
    expect(p.is_fbp_allowed).to eq(false)
    expect(p.is_client_ip_address_allowed).to eq(true)
    expect(p.is_referrer_url_allowed).to eq(false)
  end

  it 'each flag is independently controllable' do
    cases = [
      [true,  false, false, false, 'fbc'],
      [false, true,  false, false, 'fbp'],
      [false, false, true,  false, 'client_ip_address'],
      [false, false, false, true,  'referrer_url'],
    ]
    cases.each do |fbc, fbp, ip, ref, _label|
      p = FacebookAds::ServerSide::Preference.new(
        is_fbc_allowed: fbc,
        is_fbp_allowed: fbp,
        is_client_ip_address_allowed: ip,
        is_referrer_url_allowed: ref,
      )
      expect(p.is_fbc_allowed).to eq(fbc)
      expect(p.is_fbp_allowed).to eq(fbp)
      expect(p.is_client_ip_address_allowed).to eq(ip)
      expect(p.is_referrer_url_allowed).to eq(ref)
    end
  end

  it 'equality works' do
    expect(FacebookAds::ServerSide::Preference.new).to eq(FacebookAds::ServerSide::Preference.new)

    a = FacebookAds::ServerSide::Preference.new(
      is_fbc_allowed: true, is_fbp_allowed: false,
      is_client_ip_address_allowed: true, is_referrer_url_allowed: false,
    )
    b = FacebookAds::ServerSide::Preference.new(
      is_fbc_allowed: true, is_fbp_allowed: false,
      is_client_ip_address_allowed: true, is_referrer_url_allowed: false,
    )
    expect(a).to eq(b)
    expect(a.hash).to eq(b.hash)
  end

  it 'not-equal when any flag differs' do
    a = FacebookAds::ServerSide::Preference.new
    b = FacebookAds::ServerSide::Preference.new(is_fbc_allowed: false)
    expect(a).not_to eq(b)
  end

  it 'normalize returns a hash with all four flags' do
    p = FacebookAds::ServerSide::Preference.new(
      is_fbc_allowed: true,
      is_fbp_allowed: false,
      is_client_ip_address_allowed: true,
      is_referrer_url_allowed: false,
    )
    expect(p.normalize).to eq(
      'is_fbc_allowed' => true,
      'is_fbp_allowed' => false,
      'is_client_ip_address_allowed' => true,
      'is_referrer_url_allowed' => false,
    )
  end
end
