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

  class BusinessActivityLogEvent < AdObject

    field :acted_upon_business_id, 'string'
    field :acted_upon_business_name, 'string'
    field :acted_upon_business_object_id, 'string'
    field :acted_upon_business_object_name, 'string'
    field :acted_upon_business_object_type, 'string'
    field :acted_upon_user_id, 'string'
    field :acted_upon_user_name, 'string'
    field :acting_business_id, 'string'
    field :acting_business_name, 'string'
    field :acting_user_id, 'string'
    field :acting_user_name, 'string'
    field :event_time, 'int'
    field :event_type, 'string'
    field :extra_data, 'hash'
    field :target_business_id, 'string'
    field :target_business_name, 'string'
    field :target_business_object_id, 'string'
    field :target_business_object_name, 'string'
    field :target_business_object_type, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
