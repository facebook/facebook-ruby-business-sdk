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

  class AdAccountTargetingUnified < AdObject

    field :audience_size, 'int'
    field :conversion_lift, 'double'
    field :description, 'string'
    field :id, 'string'
    field :img, 'string'
    field :info, 'string'
    field :info_title, 'string'
    field :is_recommendation, 'bool'
    field :key, 'string'
    field :link, 'string'
    field :name, 'string'
    field :parent, 'string'
    field :partner, 'string'
    field :path, { list: 'string' }
    field :performance_rating, 'int'
    field :raw_name, 'string'
    field :recommendation_model, 'string'
    field :search_interest_id, 'string'
    field :source, 'string'
    field :spend, 'double'
    field :type, 'string'
    field :valid, 'bool'
    has_no_post
    has_no_delete

  end
end
