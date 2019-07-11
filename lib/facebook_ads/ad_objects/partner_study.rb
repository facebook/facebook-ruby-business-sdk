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

  class PartnerStudy < AdObject

    field :additional_info, 'string'
    field :brand, 'string'
    field :client_name, 'string'
    field :emails, 'string'
    field :id, 'string'
    field :input_ids, { list: 'string' }
    field :is_export, 'bool'
    field :lift_study, 'AdStudy'
    field :location, 'string'
    field :match_file_ds, 'string'
    field :name, 'string'
    field :partner_defined_id, 'string'
    field :partner_household_graph_dataset_id, 'string'
    field :status, 'string'
    field :study_end_date, 'datetime'
    field :study_start_date, 'datetime'
    field :study_type, 'string'
    field :submit_date, 'datetime'
    has_no_post
    has_no_delete

    has_edge :submitters do |edge|
      edge.get 'User'
    end

  end
end
