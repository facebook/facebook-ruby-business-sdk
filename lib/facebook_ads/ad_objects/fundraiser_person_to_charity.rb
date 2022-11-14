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

  class FundraiserPersonToCharity < AdObject
    FUNDRAISER_TYPE = [
      "person_for_charity",
    ]


    field :amount_raised, 'int'
    field :charity_id, 'string'
    field :currency, 'string'
    field :description, 'string'
    field :donations_count, 'int'
    field :donors_count, 'int'
    field :end_time, 'datetime'
    field :external_amount_raised, 'int'
    field :external_donations_count, 'int'
    field :external_donors_count, 'int'
    field :external_event_name, 'string'
    field :external_event_start_time, 'datetime'
    field :external_event_uri, 'string'
    field :external_fundraiser_uri, 'string'
    field :external_id, 'string'
    field :goal_amount, 'int'
    field :id, 'string'
    field :internal_amount_raised, 'int'
    field :internal_donations_count, 'int'
    field :internal_donors_count, 'int'
    field :name, 'string'
    field :uri, 'string'
    has_no_delete

    has_edge :donations do |edge|
      edge.get
    end

    has_edge :end_fundraiser do |edge|
      edge.post
    end

    has_edge :external_donations do |edge|
      edge.get
      edge.post do |api|
        api.has_param :amount_received, 'int'
        api.has_param :currency, 'string'
        api.has_param :donation_id_hash, 'string'
        api.has_param :donation_time, 'int'
        api.has_param :donor_id_hash, 'string'
      end
    end

  end
end
