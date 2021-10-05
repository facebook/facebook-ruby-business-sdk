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

            expect{FacebookAds::ServerSide::Util.normalize('test', 'em')}.to raise_error(ArgumentError)
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

        it 'normalizes f5first' do
            expect(FacebookAds::ServerSide::Util.normalize('George', 'f5first')).to eq(FacebookAds::ServerSide::Util.sha256Hash('georg'))
            expect(FacebookAds::ServerSide::Util.normalize('John', 'f5first')).to eq(FacebookAds::ServerSide::Util.sha256Hash('john'))
            expect(FacebookAds::ServerSide::Util.normalize('', 'f5first')).to eq(FacebookAds::ServerSide::Util.sha256Hash(''))
            expect(FacebookAds::ServerSide::Util.normalize(nil, 'f5first')).to eq(nil)
        end

        it 'normalizes f5last' do
            expect(FacebookAds::ServerSide::Util.normalize('Washington', 'f5last')).to eq(FacebookAds::ServerSide::Util.sha256Hash('washi'))
            expect(FacebookAds::ServerSide::Util.normalize('Adams', 'f5last')).to eq(FacebookAds::ServerSide::Util.sha256Hash('adams'))
            expect(FacebookAds::ServerSide::Util.normalize('', 'f5last')).to eq(FacebookAds::ServerSide::Util.sha256Hash(''))
            expect(FacebookAds::ServerSide::Util.normalize(nil, 'f5last')).to eq(nil)
        end

        it 'normalizes fi' do
            expect(FacebookAds::ServerSide::Util.normalize('GW', 'fi')).to eq(FacebookAds::ServerSide::Util.sha256Hash('g'))
            expect(FacebookAds::ServerSide::Util.normalize('a', 'fi')).to eq(FacebookAds::ServerSide::Util.sha256Hash('a'))
            expect(FacebookAds::ServerSide::Util.normalize('', 'fi')).to eq(FacebookAds::ServerSide::Util.sha256Hash(''))
            expect(FacebookAds::ServerSide::Util.normalize(nil, 'fi')).to eq(nil)
        end

        it 'normalizes dobd' do
            expect(FacebookAds::ServerSide::Util.normalize('1', 'dobd')).to eq(FacebookAds::ServerSide::Util.sha256Hash('01'))
            expect(FacebookAds::ServerSide::Util.normalize('05', 'dobd')).to eq(FacebookAds::ServerSide::Util.sha256Hash('05'))
            expect(FacebookAds::ServerSide::Util.normalize('9', 'dobd')).to eq(FacebookAds::ServerSide::Util.sha256Hash('09'))
            expect(FacebookAds::ServerSide::Util.normalize('31', 'dobd')).to eq(FacebookAds::ServerSide::Util.sha256Hash('31'))
            expect(FacebookAds::ServerSide::Util.normalize(nil, 'dobd')).to eq(nil)

            expect{FacebookAds::ServerSide::Util.normalize('-1', 'dobd')}.to raise_error(ArgumentError)
            expect{FacebookAds::ServerSide::Util.normalize('0', 'dobd')}.to raise_error(ArgumentError)
            expect{FacebookAds::ServerSide::Util.normalize('0a', 'dobd')}.to raise_error(ArgumentError)
            expect{FacebookAds::ServerSide::Util.normalize('32', 'dobd')}.to raise_error(ArgumentError)
            expect{FacebookAds::ServerSide::Util.normalize('tenth', 'dobd')}.to raise_error(ArgumentError)
            expect{FacebookAds::ServerSide::Util.normalize('', 'dobd')}.to raise_error(ArgumentError)
        end

        it 'normalizes dobm' do
            expect(FacebookAds::ServerSide::Util.normalize('1', 'dobm')).to eq(FacebookAds::ServerSide::Util.sha256Hash('01'))
            expect(FacebookAds::ServerSide::Util.normalize('05', 'dobm')).to eq(FacebookAds::ServerSide::Util.sha256Hash('05'))
            expect(FacebookAds::ServerSide::Util.normalize('9', 'dobm')).to eq(FacebookAds::ServerSide::Util.sha256Hash('09'))
            expect(FacebookAds::ServerSide::Util.normalize('12', 'dobm')).to eq(FacebookAds::ServerSide::Util.sha256Hash('12'))
            expect(FacebookAds::ServerSide::Util.normalize(nil, 'dobm')).to eq(nil)

            expect{FacebookAds::ServerSide::Util.normalize('-1', 'dobm')}.to raise_error(ArgumentError)
            expect{FacebookAds::ServerSide::Util.normalize('0', 'dobm')}.to raise_error(ArgumentError)
            expect{FacebookAds::ServerSide::Util.normalize('0a', 'dobm')}.to raise_error(ArgumentError)
            expect{FacebookAds::ServerSide::Util.normalize('13', 'dobm')}.to raise_error(ArgumentError)
            expect{FacebookAds::ServerSide::Util.normalize('De', 'dobm')}.to raise_error(ArgumentError)
            expect{FacebookAds::ServerSide::Util.normalize('', 'dobm')}.to raise_error(ArgumentError)
        end

        it 'normalizes doby' do
            expect(FacebookAds::ServerSide::Util.normalize('2000', 'doby')).to eq(FacebookAds::ServerSide::Util.sha256Hash('2000'))
            expect(FacebookAds::ServerSide::Util.normalize('9999', 'doby')).to eq(FacebookAds::ServerSide::Util.sha256Hash('9999'))
            expect(FacebookAds::ServerSide::Util.normalize(nil, 'doby')).to eq(nil)

            expect{FacebookAds::ServerSide::Util.normalize('-1', 'doby')}.to raise_error(ArgumentError)
            expect{FacebookAds::ServerSide::Util.normalize('10', 'doby')}.to raise_error(ArgumentError)
            expect{FacebookAds::ServerSide::Util.normalize('12345', 'doby')}.to raise_error(ArgumentError)
            expect{FacebookAds::ServerSide::Util.normalize('', 'doby')}.to raise_error(ArgumentError)
        end

        it 'normalizes delivery_category' do
            expect(FacebookAds::ServerSide::Util.normalize(' curbside ', 'delivery_category')).to eq('curbside')
            expect(FacebookAds::ServerSide::Util.normalize('CURBSIDE', 'delivery_category')).to eq('curbside')
            expect{FacebookAds::ServerSide::Util.normalize('INVALID', 'delivery_category')}.to raise_error(ArgumentError)
        end

        it 'normalize_array normalizes values' do
            emails = ['test1@example.com', 'test2@example.com']

            expect(FacebookAds::ServerSide::Util.normalize_array(emails, 'em')).to eq(emails.map{|x| FacebookAds::ServerSide::Util.sha256Hash(x)})
        end

        it 'normalize_array deduplicates arrays' do
            cities1 = ['portland', 'bend', 'portland']
            cities2 = [' portland', 'bend', 'portland ']
            expected_cities = ['bend', 'portland'].map{|x| FacebookAds::ServerSide::Util.sha256Hash(x)}

            expect(FacebookAds::ServerSide::Util.normalize_array(cities1, 'ct')).to match_array(expected_cities)
            expect(FacebookAds::ServerSide::Util.normalize_array(cities2, 'ct')).to match_array(expected_cities)
        end

        it 'normalizes_array returns nil for incorrect inputs' do
            expect(FacebookAds::ServerSide::Util.normalize_array(nil, 'em')).to be_nil
            expect(FacebookAds::ServerSide::Util.normalize_array([], 'em')).to be_nil
            expect(FacebookAds::ServerSide::Util.normalize_array({}, 'em')).to be_nil
            expect(FacebookAds::ServerSide::Util.normalize_array({'a' => 'test'}, 'em')).to be_nil
            expect(FacebookAds::ServerSide::Util.normalize_array(['a', 5], 'em')).to be_nil
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
