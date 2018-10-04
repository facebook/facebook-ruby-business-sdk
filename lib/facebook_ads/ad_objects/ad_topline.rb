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

  class AdTopline < AdObject

    field :account_id, 'string'
    field :client_approval_date, 'datetime'
    field :created_by, 'string'
    field :created_date, 'datetime'
    field :description, 'string'
    field :flight_end_date, 'datetime'
    field :flight_start_date, 'datetime'
    field :func_cap_amount, 'string'
    field :func_cap_amount_with_offset, 'string'
    field :func_line_amount, 'string'
    field :func_line_amount_with_offset, 'string'
    field :func_price, 'string'
    field :func_price_with_offset, 'string'
    field :gender, 'string'
    field :id, 'string'
    field :impressions, 'int'
    field :io_number, 'int'
    field :is_bonus_line, 'int'
    field :keywords, 'string'
    field :last_updated_by, 'string'
    field :last_updated_date, 'datetime'
    field :line_number, 'int'
    field :line_position, 'int'
    field :line_type, 'string'
    field :location, 'string'
    field :max_age, 'string'
    field :max_budget, 'string'
    field :min_age, 'string'
    field :price_per_trp, 'string'
    field :product_type, 'string'
    field :rev_assurance_approval_date, 'datetime'
    field :targets, 'string'
    field :trp_updated_time, 'int'
    field :trp_value, 'string'
    field :uom, 'string'
    has_no_post
    has_no_delete

  end
end
