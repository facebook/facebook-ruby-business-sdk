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

  class OwnedDomain < AdObject
    PERMITTED_ROLES = [
      "ADMIN",
      "WEBMASTER_DEVELOPER",
    ]


    field :domain_name, 'string'
    field :id, 'string'
    has_no_post
    has_no_delete

    has_edge :Agencies do |edge|
      edge.post 'OwnedDomain' do |api|
        api.has_param :business, 'string'
        api.has_param :permitted_roles, { list: { enum: -> { OwnedDomain::PERMITTED_ROLES }} }
      end
    end

    has_edge :assigned_partners do |edge|
      edge.get 'Business'
    end

    has_edge :blocked_adgroups do |edge|
      edge.get 'Ad' do |api|
        api.has_param :pages, { list: 'int' }
        api.has_param :restriction, { enum: -> { Ad::RESTRICTION }}
      end
    end

    has_edge :business_object_tags do |edge|
      edge.get 'BusinessTag' do |api|
        api.has_param :business_id, 'string'
      end
    end

    has_edge :business_requests do |edge|
      edge.get 'BusinessRequest'
    end

    has_edge :connected_business_objects do |edge|
      edge.get 'BusinessObject' do |api|
        api.has_param :type, { enum: -> { BusinessObject::TYPE }}
        api.has_param :business_id, 'string'
      end
    end

    has_edge :pages_running_adgroups do |edge|
      edge.get
    end

    has_edge :permitted_pages do |edge|
      edge.get 'Page' do |api|
        api.has_param :permission, { enum: -> { Page::PERMISSION }}
        api.has_param :restriction, { enum: -> { Page::RESTRICTION }}
      end
    end

    has_edge :running_adgroups do |edge|
      edge.get 'Ad' do |api|
        api.has_param :pages, { list: 'int' }
        api.has_param :restriction, { enum: -> { Ad::RESTRICTION }}
      end
    end

  end
end
