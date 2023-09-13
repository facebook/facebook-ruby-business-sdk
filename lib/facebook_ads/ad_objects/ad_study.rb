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

  class AdStudy < AdObject
    TYPE = [
      "CONTINUOUS_LIFT_CONFIG",
      "GEO_LIFT",
      "LIFT",
      "SPLIT_TEST",
    ]


    field :business, 'Business'
    field :canceled_time, 'datetime'
    field :client_business, 'Business'
    field :cooldown_start_time, 'datetime'
    field :created_by, 'User'
    field :created_time, 'datetime'
    field :description, 'string'
    field :end_time, 'datetime'
    field :id, 'string'
    field :measurement_contact, 'User'
    field :name, 'string'
    field :observation_end_time, 'datetime'
    field :results_first_available_date, 'string'
    field :sales_contact, 'User'
    field :start_time, 'datetime'
    field :type, 'string'
    field :updated_by, 'User'
    field :updated_time, 'datetime'
    field :cells, { list: 'object' }
    field :confidence_level, 'double'
    field :objectives, { list: 'object' }
    field :viewers, { list: 'int' }

    has_edge :cells do |edge|
      edge.get 'AdStudyCell'
    end

    has_edge :checkpoint do |edge|
      edge.post 'AdStudy' do |api|
        api.has_param :checkpoint_data, 'string'
        api.has_param :checkpoint_name, 'string'
        api.has_param :component, 'string'
        api.has_param :instance_id, 'string'
        api.has_param :run_id, 'string'
      end
    end

    has_edge :instances do |edge|
      edge.get 'PrivateLiftStudyInstance'
      edge.post 'PrivateLiftStudyInstance' do |api|
        api.has_param :breakdown_key, 'hash'
        api.has_param :run_id, 'string'
      end
    end

    has_edge :objectives do |edge|
      edge.get 'AdStudyObjective'
    end

  end
end
