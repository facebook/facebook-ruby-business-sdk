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

require 'spec_helper'

RSpec.describe FacebookAds::AdObject do
  let(:value) { {'foo' => 'bar', 'fields' => []} }
  subject(:this) { described_class.new(value, value.keys) }

  describe '#initialize' do
    subject(:subclass) { TestClass.new(value, value.keys) }

    context 'when no "field :fields" is declared in subclass' do
      class TestClass < FacebookAds::AdObject; end

      it 'should call instance method internal_fields= once' do
        expect_any_instance_of(FacebookAds::AdObject).to receive(:internal_fields=).once
        expect(subclass.attributes[:foo]).to eq('bar')
        expect(subclass.attributes[:fields]).to eq([])
      end
    end

    context 'when "field :fields" is declared in subclass' do
      class TestClass < FacebookAds::AdObject
        field :fields, { list: 'adreportrun_graph_fields_param' }
      end

      it 'should call instance method fields= once' do
        expect_any_instance_of(FacebookAds::AdObject).to receive(:internal_fields=).once
        expect(subclass.attributes[:foo]).to eq('bar')
        expect(subclass.attributes[:fields]).to eq([])
      end
    end
  end

  describe '#internal_fields=' do
    subject(:internal_fields) { this.internal_fields = fields; this.internal_fields }
    context 'when given fields param is comma separated string' do
      let(:fields) { 'foo,bar' }

      it { expect(internal_fields).to eq(Set.new(%i[foo bar])) }
    end

    context 'when given fields param is array with string keys' do
      let(:fields) { %w[foo bar] }

      it { expect(internal_fields).to eq(Set.new(%i[foo bar])) }
    end
  end

end
