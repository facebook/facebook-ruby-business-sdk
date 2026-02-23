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
        attrs = {
            email: 'email-1',
            phone: 'phone-2',
            gender: 'gender-3',
            date_of_birth: 'dob-4',
            first_name: 'first-name-5',
            last_name: 'last-name-6',
            city: 'city-7',
            country_code: 'country-code-8',
            state: 'state-9',
            zip_code: 'zip-code-10',
            external_id: 'external-id-100',
            f5first: 'f5first-11',
            lead_id: 'lead_id-112',
            f5last: 'f5last-12',
            fi: 'fi-13',
            dobd: 'dobd-14',
            dobm: 'dobm-15',
            doby: 'doby-16',
        }
        allow(FacebookAds::ServerSide::Util).to receive(:normalize) do |input, field_type|
            "#{field_type}_#{input}-normalized"
        end
        user_data = FacebookAds::ServerSide::UserData.new(**attrs)
        normalized = user_data.normalize

        expect(normalized).to eq(
            'em' => ["em_#{attrs[:email]}-normalized"],
            'ph' => ["ph_#{attrs[:phone]}-normalized"],
            'ge' => ["ge_#{attrs[:gender]}-normalized"],
            'db' => ["db_#{attrs[:date_of_birth]}-normalized"],
            'ln' => ["ln_#{attrs[:last_name]}-normalized"],
            'fn' => ["fn_#{attrs[:first_name]}-normalized"],
            'ct' => ["ct_#{attrs[:city]}-normalized"],
            'country' => ["country_#{attrs[:country_code]}-normalized"],
            'st' => ["st_#{attrs[:state]}-normalized"],
            'zp' => ["zp_#{attrs[:zip_code]}-normalized"],
            'external_id' => [attrs[:external_id]],
            'lead_id' => attrs[:lead_id],
            'f5first' => "f5first_#{attrs[:f5first]}-normalized",
            'f5last' => "f5last_#{attrs[:f5last]}-normalized",
            'fi' => "fi_#{attrs[:fi]}-normalized",
            'dobd' => "dobd_#{attrs[:dobd]}-normalized",
            'dobm' => "dobm_#{attrs[:dobm]}-normalized",
            'doby' => "doby_#{attrs[:doby]}-normalized",
        )
    end

    it 'normalizes field arrays' do
        attrs = {
            emails: ['email-1', 'email-10'],
            phones: ['phone-2', 'phone-20'],
            genders: ['gender-3', 'gender-30'],
            dates_of_birth: ['dob-4', 'dob-40'],
            first_names: ['first-name-5', 'first-name-50'],
            last_names: ['last-name-6', 'last-name-60'],
            cities: ['city-7', 'city-70'],
            country_codes: ['country-code-8', 'country-code-80'],
            states: ['state-9', 'state-90'],
            zip_codes: ['zip-code-10', 'zip-code-100'],
            external_ids: ['external-id-11', 'external-id-110'],
        }
        allow(FacebookAds::ServerSide::Util).to receive(:normalize_array) do |input, field_type|
            input + [field_type]
        end
        user_data = FacebookAds::ServerSide::UserData.new(**attrs)
        normalized = user_data.normalize

        expect(normalized).to eq(
            'em' => attrs[:emails] + ['em'],
            'ph' => attrs[:phones] + ['ph'],
            'ge' => attrs[:genders] + ['ge'],
            'db' => attrs[:dates_of_birth] + ['db'],
            'ln' => attrs[:last_names] + ['ln'],
            'fn' => attrs[:first_names] + ['fn'],
            'ct' => attrs[:cities] + ['ct'],
            'country' => attrs[:country_codes] + ['country'],
            'st' => attrs[:states] + ['st'],
            'zp' => attrs[:zip_codes] + ['zp'],
            'external_id' => attrs[:external_ids]
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
            lead_id: 'lead-id-100',
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
            lead_id: 'lead-id-100',
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
            lead_id: 'lead-id-100',
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
            lead_id: 'lead-id-100',
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

    it 'equals works with value arrays' do
        attrs = {
            emails: ['email-1', 'email-10'],
            phones: ['phone-2', 'phone-20'],
            genders: ['gender-3', 'gender-30'],
            dates_of_birth: ['dob-4', 'dob-40'],
            last_names: ['first-name-5', 'first-name-50'],
            first_names: ['last-name-6', 'last-name-60'],
            cities: ['city-7', 'city-70'],
            country_codes: ['country-code-8', 'country-code-80'],
            states: ['state-9', 'state-90'],
            zip_codes: ['zip-code-10', 'zip-code-100'],
            external_ids: ['external-id-11', 'external-id-110'],
        }
        user_data1 = FacebookAds::ServerSide::UserData.new()
        user_data2 = FacebookAds::ServerSide::UserData.new()
        expect(user_data1).to eq(user_data2)
        expect(user_data1.hash).to eq(user_data2.hash)

        user_data1 = FacebookAds::ServerSide::UserData.new(**attrs)
        user_data2 = FacebookAds::ServerSide::UserData.new(**attrs)
        expect(user_data1).to eq(user_data2)
        expect(user_data1.hash).to eq(user_data2.hash)
    end

    it 'normalize returns an empty hash when incorrect value arrays are used' do
        user_data = FacebookAds::ServerSide::UserData.new(
            emails: [1, 2],
            phones: [1, 2],
            genders: [1, 2],
            dates_of_birth: [1, 2],
            first_names: [1, 2],
            last_names: [1, 2],
            cities: [1, 2],
            country_codes: [1, 2],
            states: [1, 2],
            zip_codes: [1, 2],
        )

        expect(user_data.normalize).to eq({})
    end

    it 'setters and getters work' do
        user_data = FacebookAds::ServerSide::UserData.new()
        user_data.email = 'test@example.com'
        expect(user_data.email).to eq('test@example.com')

        user_data.zip_codes = ['10001', '20002']
        expect(user_data.zip_codes).to eq(['10001', '20002'])
    end

    it 'build from attributes works' do
        user_data = FacebookAds::ServerSide::UserData.new()
        attrs = {
            state: 'ca',
            dates_of_birth: ['19950101', '19970203'],
        }
        user_data.build(attrs)

        expect(user_data.state).to eq(attrs[:state])
        expect(user_data.dates_of_birth).to eq(attrs[:dates_of_birth])
    end

    it 'build from attributes arrays take assignment precedence' do
        user_data = FacebookAds::ServerSide::UserData.new()
        attrs = {
            city: 'seattle',
            cities: ['menlopark', 'paloalto'],
        }
        user_data.build(attrs)

        expect(user_data.city).to eq(attrs[:cities][0])
        expect(user_data.cities).to eq(attrs[:cities])
    end

    it 'constructor fails validation if both single and multi-values are specified' do
        pairs = [
            [:email, :emails],
            [:phone, :phones],
            [:gender, :genders],
            [:date_of_birth, :dates_of_birth],
            [:first_name, :first_names],
            [:last_name, :last_names],
            [:city, :cities],
            [:country_code, :country_codes],
            [:state, :states],
            [:zip_code, :zip_codes],
            [:external_id, :external_ids],
        ]

        pairs.each do |singular, plural|
            expect{
                FacebookAds::ServerSide::UserData.new(
                    singular => 'test1',
                    plural => ['test2'],
                )
            }.to raise_error(ArgumentError, /.*#{plural}.*#{singular}.*/)
        end
    end

    it 'constructor works when a single value is used' do
        user_data = FacebookAds::ServerSide::UserData.new(
            email: 'email-1'
        )

        expect(user_data.emails).to eq(['email-1'])
    end

    it 'constructor works when a multi-value is used' do
        user_data = FacebookAds::ServerSide::UserData.new(
            phones: ['phone-2']
        )

        expect(user_data.phones).to eq(['phone-2'])
    end
end
