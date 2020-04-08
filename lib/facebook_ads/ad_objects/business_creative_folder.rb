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

  class BusinessCreativeFolder < AdObject
    PERMITTED_TASKS = [
      "CREATE_CONTENT",
      "MANAGE_CONTENT",
      "MANAGE_PERMISSIONS",
      "VIEW_CONTENT",
      "VIEW_INSIGHTS",
    ]

    TASKS = [
      "CREATE_CONTENT",
      "MANAGE_CONTENT",
      "MANAGE_PERMISSIONS",
      "VIEW_CONTENT",
      "VIEW_INSIGHTS",
    ]


    field :business, 'Business'
    field :creation_time, 'datetime'
    field :creative_insight_permissions, 'hash'
    field :description, 'string'
    field :id, 'string'
    field :media_library_url, 'string'
    field :name, 'string'
    field :parent_folder, 'BusinessCreativeFolder'
    field :parent_folder_id, 'string'

    has_edge :agencies do |edge|
      edge.get 'Business'
      edge.post 'BusinessCreativeFolder' do |api|
        api.has_param :business, 'string'
        api.has_param :permitted_tasks, { list: { enum: -> { BusinessCreativeFolder::PERMITTED_TASKS }} }
      end
    end

    has_edge :assigned_users do |edge|
      edge.get 'AssignedUser' do |api|
        api.has_param :business, 'string'
      end
      edge.post 'BusinessCreativeFolder' do |api|
        api.has_param :tasks, { list: { enum: -> { BusinessCreativeFolder::TASKS }} }
        api.has_param :user, 'int'
      end
    end

    has_edge :subfolders do |edge|
      edge.get 'BusinessCreativeFolder'
    end

  end
end
