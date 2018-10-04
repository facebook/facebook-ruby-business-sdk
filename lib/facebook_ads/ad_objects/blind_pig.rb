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

# FB:AUTOGEN

module FacebookAds
  # This class is auto-generated.

  # For any issues or feature requests related to this class, please let us know
  # on github and we'll fix in our codegen framework. We'll not be able to accept
  # pull request for this class.

  class BlindPig < AdObject

    field :all_phone_numbers, { list: 'string' }
    field :alternately_named_field, 'int'
    field :always_null, 'User'
    field :always_secret_pattern_time, 'datetime'
    field :always_secret_time, 'datetime'
    field :ambience, 'string'
    field :async_drinks_info, { list: 'object' }
    field :average_customer_age, 'double'
    field :awesomeness, 'string'
    field :bar_game_ids, 'string'
    field :beer_types, { list: 'string' }
    field :blind_pig_profile, 'Profile'
    field :cards_accepted, 'bool'
    field :category, 'string'
    field :celebrity, 'string'
    field :chair_count, 'object'
    field :cocktails, { list: 'string' }
    field :color, 'string'
    field :company_name, 'string'
    field :country_of_origin, 'string'
    field :creation_time_from_tao_server, 'datetime'
    field :creator, 'User'
    field :creator_as_field, 'User'
    field :currency_code, 'string'
    field :days_open, 'string'
    field :drinks_info, { list: 'object' }
    field :dynamically_named_field, 'int'
    field :ein, 'string'
    field :email_address_blacklist, { list: 'string' }
    field :embedded_updated_time, 'datetime'
    field :even_number, 'int'
    field :favorite_meal, 'string'
    field :favorite_person, 'User'
    field :favorite_person_again, 'User'
    field :favorite_place, 'string'
    field :feedback_list, { list: 'object' }
    field :field_on_shadow_ent_pattern, 'string'
    field :field_on_trait, 'string'
    field :founded_time, 'datetime'
    field :geocities_page_uri, 'string'
    field :id, 'string'
    field :instruments, { list: 'string' }
    field :is_illegal, 'bool'
    field :is_in_blanket, 'bool'
    field :last_drink_bottle_broken_date, 'datetime'
    field :latitude, 'double'
    field :locale, 'string'
    field :longitude, 'double'
    field :lucky_numbers, { list: 'int' }
    field :marketing_uri, 'string'
    field :max_allowance, 'object'
    field :meals, { list: 'string' }
    field :mobile_github_uri, 'string'
    field :monthly_profit, { list: 'object' }
    field :name, 'string'
    field :overrideable_thing, 'string'
    field :phone_directory, { list: 'object' }
    field :phone_numbers, { list: 'string' }
    field :price, { list: 'object' }
    field :proprietor, 'User'
    field :request_box, 'string'
    field :revert_name, 'string'
    field :second_favorite_person, 'User'
    field :secret_even_number, 'int'
    field :secret_even_pattern_number, 'int'
    field :secret_odd_number, 'int'
    field :secret_pattern_time, 'datetime'
    field :secret_time, 'datetime'
    field :see_also, { list: 'string' }
    field :snacks, { list: 'string' }
    field :store_number, 'string'
    field :street_address, 'string'
    field :subpattern_address, 'string'
    field :subpattern_dynamic_field, 'int'
    field :subpattern_name, 'string'
    field :throne_chair_id, 'string'
    field :todays_special, 'object'
    field :unique_bar_game_ids, { list: 'string' }
    field :update_time_from_tao_server, 'datetime'
    field :vip, 'User'
    field :year_founded, 'int'
    has_no_post
    has_no_delete

    has_edge :bar_games do |edge|
      edge.get 'Application'
    end

    has_edge :card_holders do |edge|
      edge.get 'User'
    end

    has_edge :known_patrons do |edge|
      edge.get 'User'
    end

    has_edge :supervisors do |edge|
      edge.get 'User'
    end

    has_edge :unique_bar_games do |edge|
      edge.get 'Application'
    end

  end
end
