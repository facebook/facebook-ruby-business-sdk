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

  class AdStudy < AdObject
    TYPE = [
      "CONTINUOUS_LIFT_CONFIG",
      "GEO_LIFT",
      "LIFT",
      "PRIVATE_LIFT",
      "SPLIT_TEST",
    ]


    field :business, 'Business'
    field :canceled_time, 'datetime'
    field :cooldown_start_time, 'datetime'
    field :created_by, 'User'
    field :created_time, 'datetime'
    field :description, 'string'
    field :end_time, 'datetime'
    field :id, 'string'
    field :name, 'string'
    field :observation_end_time, 'datetime'
    field :results_first_available_date, 'string'
    field :start_time, 'datetime'
    field :type, 'string'
    field :updated_by, 'User'
    field :updated_time, 'datetime'
    field :cells, { list: 'object' }
    field :client_business, 'string'
    field :confidence_level, 'double'
    field :objectives, { list: 'object' }
    field :viewers, { list: 'int' }

    has_edge :cells do |edge|
      edge.get 'AdStudyCell'
    end

    has_edge :instances do |edge|
      edge.get 'PrivateLiftStudyInstance'
      edge.post 'PrivateLiftStudyInstance' do |api|
        api.has_param :breakdown_key, 'hash'
      end
    end

    has_edge :objectives do |edge|
      edge.get 'AdStudyObjective'
    end

  end
end
