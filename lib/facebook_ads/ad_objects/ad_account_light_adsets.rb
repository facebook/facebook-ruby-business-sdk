# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

# FB:AUTOGEN

module FacebookAds
  # This class is auto-generated.

  # For any issues or feature requests related to this class, please let us know
  # on github and we'll fix in our codegen framework. We'll not be able to accept
  # pull request for this class.

  class AdAccountLightAdsets < AdObject

    field :id, 'string'
    has_no_get
    has_no_post
    has_no_delete

    has_edge :light_adsets do |edge|
      edge.get 'AdAccountLightAdsetsGet' do |api|
        api.has_param :ad_draft_id, 'int'
        api.has_param :after, 'string'
        api.has_param :am_call_tags, 'string'
        api.has_param :before, 'string'
        api.has_param :comparison_time_ranges, 'string'
        api.has_param :date_preset, { enum: -> { AdAccountLightAdsetsGet::DATE_PRESET }}
        api.has_param :effective_status, { list: 'string' }
        api.has_param :fields, 'string'
        api.has_param :filtering, 'string'
        api.has_param :from_adtable, 'bool'
        api.has_param :include_deleted, 'bool'
        api.has_param :include_drafts, 'bool'
        api.has_param :is_completed, 'bool'
        api.has_param :limit, 'int'
        api.has_param :offset, 'int'
        api.has_param :sort, { list: 'string' }
        api.has_param :summary, 'string'
        api.has_param :time_range, 'string'
        api.has_param :updated_since, 'int'
        api.has_param :use_employee_draft, 'bool'
      end
    end

  end
end
