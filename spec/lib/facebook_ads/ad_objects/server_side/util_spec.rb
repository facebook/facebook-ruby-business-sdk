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

RSpec.describe 'FacebookAds::ServerSide::Util' do
    context 'normalize' do
        it 'normalizes country' do
            expect(FacebookAds::ServerSide::Util.normalize('US', 'country')).to eq(FacebookAds::ServerSide::Util.sha256Hash('us'))
        end

        it 'normalizes city' do
            expect(FacebookAds::ServerSide::Util.normalize('Seattle', 'ct')).to eq(FacebookAds::ServerSide::Util.sha256Hash('seattle'))
        end

        it 'normalizes currency' do
            expect(FacebookAds::ServerSide::Util.normalize('USD', 'currency')).to eq('usd')
        end

        it 'normalizes email' do
            expect(FacebookAds::ServerSide::Util.normalize('foo@test.COM', 'em')).to eq(FacebookAds::ServerSide::Util.sha256Hash('foo@test.com'))
        end

        it 'normalizes gender' do
            expect(FacebookAds::ServerSide::Util.normalize('F', 'ge')).to eq(FacebookAds::ServerSide::Util.sha256Hash('f'))
        end

        it 'normalizes phone number' do
            expect(FacebookAds::ServerSide::Util.normalize('1-234-567-8900', 'ph')).to eq(FacebookAds::ServerSide::Util.sha256Hash('12345678900'))
        end

        it 'normalizes state' do
            expect(FacebookAds::ServerSide::Util.normalize('Rhode Island', 'st')).to eq(FacebookAds::ServerSide::Util.sha256Hash('rhodeisland'))
        end

        it 'normalizes zip' do
            expect(FacebookAds::ServerSide::Util.normalize('12345-67890', 'zp')).to eq(FacebookAds::ServerSide::Util.sha256Hash('12345'))
        end
    end

    context 'sha256Hash' do
        it 'hashes strings' do
            expect(FacebookAds::ServerSide::Util.sha256Hash('test-string')).to eq('ffe65f1d98fafedea3514adc956c8ada5980c6c5d2552fd61f48401aefd5c00e')
        end

        it 'hashes empty strings' do
            expect(FacebookAds::ServerSide::Util.sha256Hash('')).to eq('e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855')
        end

        it 'does not hash when nil' do
            expect(FacebookAds::ServerSide::Util.sha256Hash(nil)).to eq(nil)
        end
    end
end
