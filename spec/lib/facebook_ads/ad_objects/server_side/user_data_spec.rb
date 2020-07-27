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

RSpec.describe 'FacebookAds::ServerSide::UserData' do
    it 'normalizes fields' do
        email = 'email-1'
        phone = 'phone-2'
        gender = 'gender-3'
        date_of_birth = 'dob-4'
        first_name = 'first-name-5'
        last_name = 'last-name-6'
        city = 'city-7'
        country_code = 'country-code-8'
        state = 'state-9'
        zip_code = 'zip-code-10'
        f5first = 'f5first-11'
        f5last = 'f5last-12'
        fi = 'fi-13'
        dobd = 'dobd-14'
        dobm = 'dobm-15'
        doby = 'doby-16'
        allow(FacebookAds::ServerSide::Util).to receive(:normalize) do |input, field_type|
            "#{field_type}_#{input}-normalized"
        end
        user_data = FacebookAds::ServerSide::UserData.new(
            email: email,
            phone: phone,
            gender: gender,
            date_of_birth: date_of_birth,
            last_name: last_name,
            first_name: first_name,
            city: city,
            country_code: country_code,
            state: state,
            zip_code: zip_code,
            f5first: f5first,
            f5last: f5last,
            fi: fi,
            dobd: dobd,
            dobm: dobm,
            doby: doby,
        )
        normalized = user_data.normalize

        expect(normalized).to eq(
            'em' => "em_#{email}-normalized",
            'ph' => "ph_#{phone}-normalized",
            'ge' => "ge_#{gender}-normalized",
            'db' => "db_#{date_of_birth}-normalized",
            'ln' => "ln_#{last_name}-normalized",
            'fn' => "fn_#{first_name}-normalized",
            'ct' => "ct_#{city}-normalized",
            'country' => "country_#{country_code}-normalized",
            'st' => "st_#{state}-normalized",
            'zp' => "zp_#{zip_code}-normalized",
            'f5first' => "f5first_#{f5first}-normalized",
            'f5last' => "f5last_#{f5last}-normalized",
            'fi' => "fi_#{fi}-normalized",
            'dobd' => "dobd_#{dobd}-normalized",
            'dobm' => "dobm_#{dobm}-normalized",
            'doby' => "doby_#{doby}-normalized",
        )
    end

    it 'equals works' do
        user_data1 = FacebookAds::ServerSide::UserData.new()
        user_data2 = FacebookAds::ServerSide::UserData.new()
        expect(user_data1).to eq(user_data2)
        expect(user_data1.hash).to eq(user_data2.hash)

        user_data1 = FacebookAds::ServerSide::UserData.new(
            email: 'email-1',
            phone: 'phone-2',
            gender: 'gender-3',
            date_of_birth: 'dob-4',
            last_name: 'first-name-5',
            first_name: 'last-name-6',
            city: 'city-7',
            country_code: 'country-code-8',
            state: 'state-9',
            zip_code: 'zip-code-10',
            f5first: 'f5first-11',
            f5last: 'f5last-12',
            fi: 'fi-13',
            dobd: 'dobd-14',
            dobm: 'dobm-15',
            doby: 'doby-16',
        )
        user_data2 = FacebookAds::ServerSide::UserData.new(
            email: 'email-1',
            phone: 'phone-2',
            gender: 'gender-3',
            date_of_birth: 'dob-4',
            last_name: 'first-name-5',
            first_name: 'last-name-6',
            city: 'city-7',
            country_code: 'country-code-8',
            state: 'state-9',
            zip_code: 'zip-code-10',
            f5first: 'f5first-11',
            f5last: 'f5last-12',
            fi: 'fi-13',
            dobd: 'dobd-14',
            dobm: 'dobm-15',
            doby: 'doby-16',
        )
        expect(user_data1).to eq(user_data2)
        expect(user_data1.hash).to eq(user_data2.hash)
    end

    it 'not equals works' do
        user_data1 = FacebookAds::ServerSide::UserData.new(email: 'test@email.com')
        user_data2 = FacebookAds::ServerSide::UserData.new()
        expect(user_data1).to_not eq(user_data2)
        expect(user_data1.hash).to_not eq(user_data2.hash)

        user_data1 = FacebookAds::ServerSide::UserData.new(
            email: 'email-1',
            phone: 'phone-2',
            gender: 'gender-3',
            date_of_birth: 'dob-4',
            last_name: 'first-name-5',
            first_name: 'last-name-6',
            city: 'city-7',
            country_code: 'country-code-8',
            state: 'state-9',
            zip_code: 'zip-code-10',
            f5first: 'f5first-11',
            f5last: 'f5last-12',
            fi: 'fi-13',
            dobd: 'dobd-14',
            dobm: 'dobm-15',
            doby: 'doby-16',
        )
        user_data2 = FacebookAds::ServerSide::UserData.new(
            email: 'email-1',
            phone: 'phone-2',
            gender: 'gender-3',
            date_of_birth: 'dob-4',
            last_name: 'first-name-5',
            first_name: 'last-name-6',
            city: 'city-7',
            country_code: 'country-code-8',
            state: 'state-9',
            zip_code: 'zip-code-10',
            f5first: 'f5first-11',
            f5last: 'f5last-12',
            fi: 'fi-13',
            dobd: 'dobd-14',
            # no dobm
            doby: 'doby-16',
        )
        expect(user_data1).to_not eq(user_data2)
        expect(user_data1.hash).to_not eq(user_data2.hash)
    end
end
