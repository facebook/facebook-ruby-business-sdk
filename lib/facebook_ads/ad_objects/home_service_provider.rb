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

  class HomeServiceProvider < AdObject

    field :achievement_badges, 'string'
    field :address, 'object'
    field :applinks, 'AppLinks'
    field :bbb_rating, 'string'
    field :bookable_task, { list: 'object' }
    field :business_hours, { list: 'object' }
    field :business_phone_number, 'string'
    field :business_url, 'string'
    field :company_name, 'string'
    field :company_tagline, 'string'
    field :completed_jobs, 'object'
    field :criminal_background_check_date, 'string'
    field :deals, 'string'
    field :description, 'string'
    field :fb_page_id, 'Page'
    field :financial_background_check_date, 'string'
    field :first_name, 'string'
    field :home_service_provider_id, 'string'
    field :id, 'string'
    field :images, { list: 'string' }
    field :insurance_info, 'string'
    field :internal_score, 'double'
    field :last_name, 'string'
    field :licensing_info, 'string'
    field :messaging_inbox_page_id, 'Page'
    field :partner_verified_date, 'string'
    field :product_brands_used, 'string'
    field :provider_type, 'string'
    field :rating_distribution, { list: 'object' }
    field :sanitized_images, { list: 'string' }
    field :title, 'string'
    field :transaction_currency, 'string'
    field :url, 'string'
    field :year_business_started, 'int'
    has_no_post
    has_no_delete

  end
end
