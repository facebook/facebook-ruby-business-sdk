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

RSpec.describe FacebookAds::FieldTypes::DateTime do
  subject(:this) { described_class.new }

  describe '#deserialize' do
    subject(:deserialize) { this.deserialize(value) }

    context 'when given value is string type' do
      let(:value) { '2017-08-31T23:59:00-04:00' }

      it { expect(deserialize).to eq(DateTime.strptime('2017-08-31T23:59:00-04:00', '%FT%T%:z')) }
    end

    context 'when given value is number type' do
      let(:value) { 1504238340 }

      it { expect(deserialize).to eq(DateTime.strptime('2017-08-31T23:59:00-04:00', '%FT%T%:z')) }
    end
  end

  describe '#serialize' do
    subject(:serialize) { this.serialize(value) }

    context 'when given value is String type' do
      let(:value) { '2017-08-31T23:59:00-04:00' }

      it { expect(serialize).to eq(1504238340) }
    end

    context 'when given value is Time type' do
      let(:value) { DateTime.strptime('2017-08-31T23:59:00-04:00', '%FT%T%:z').to_time }

      it { expect(serialize).to eq(1504238340) }
    end

    context 'when given value is DateTime type' do
      let(:value) { DateTime.strptime('2017-08-31T23:59:00-04:00', '%FT%T%:z') }

      it { expect(serialize).to eq(1504238340) }
    end

    context 'when given value is something else' do
      let(:value) { 1504238340 }

      it { expect(serialize).to eq(1504238340) }
    end
  end
end
