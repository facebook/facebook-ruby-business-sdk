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

  class EventTicketTier < AdObject

    field :currency, 'string'
    field :description, 'string'
    field :end_sales_time, 'datetime'
    field :end_show_time, 'datetime'
    field :fee_settings, 'string'
    field :id, 'string'
    field :maximum_quantity, 'int'
    field :metadata, 'string'
    field :minimum_quantity, 'int'
    field :name, 'string'
    field :price, 'int'
    field :priority, 'int'
    field :retailer_id, 'string'
    field :seating_map_image_url, 'string'
    field :start_sales_time, 'datetime'
    field :start_show_time, 'datetime'
    field :status, 'string'
    field :total_quantity, 'int'
    has_no_post
    has_no_delete

  end
end
