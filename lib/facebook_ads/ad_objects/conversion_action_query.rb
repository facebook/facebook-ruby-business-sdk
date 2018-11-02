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

  class ConversionActionQuery < AdObject

    field :_action_type, { list: 'object' }
    field :application, { list: 'object' }
    field :conversion_id, { list: 'string' }
    field :creative, { list: 'object' }
    field :dataset, { list: 'string' }
    field :event, { list: 'string' }
    field :_event_creator, { list: 'string' }
    field :event_type, { list: 'string' }
    field :fb_pixel, { list: 'string' }
    field :fb_pixel_event, { list: 'string' }
    field :leadgen, { list: 'string' }
    field :object, { list: 'string' }
    field :_object_domain, { list: 'string' }
    field :offer, { list: 'string' }
    field :_offer_creator, { list: 'string' }
    field :offsite_pixel, { list: 'string' }
    field :page, { list: 'string' }
    field :_page_parent, { list: 'string' }
    field :post, { list: 'string' }
    field :_post_object, { list: 'string' }
    field :_post_object_wall, { list: 'string' }
    field :_post_wall, { list: 'string' }
    field :question, { list: 'string' }
    field :_question_creator, { list: 'string' }
    field :response, { list: 'string' }
    field :subtype, { list: 'string' }
    field :id, 'string'
    has_no_get
    has_no_post
    has_no_delete

  end
end
