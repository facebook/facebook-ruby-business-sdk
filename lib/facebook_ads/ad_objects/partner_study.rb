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

  end
end
