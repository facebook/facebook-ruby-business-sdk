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

  class FlexibleTargeting < AdObject

    field :behaviors, { list: 'IdName' }
    field :college_years, { list: 'int' }
    field :connections, { list: 'IdName' }
    field :custom_audiences, { list: 'IdName' }
    field :education_majors, { list: 'IdName' }
    field :education_schools, { list: 'IdName' }
    field :education_statuses, { list: 'int' }
    field :ethnic_affinity, { list: 'IdName' }
    field :family_statuses, { list: 'IdName' }
    field :friends_of_connections, { list: 'IdName' }
    field :generation, { list: 'IdName' }
    field :home_ownership, { list: 'IdName' }
    field :home_type, { list: 'IdName' }
    field :home_value, { list: 'IdName' }
    field :household_composition, { list: 'IdName' }
    field :income, { list: 'IdName' }
    field :industries, { list: 'IdName' }
    field :interested_in, { list: 'int' }
    field :interests, { list: 'IdName' }
    field :life_events, { list: 'IdName' }
    field :moms, { list: 'IdName' }
    field :net_worth, { list: 'IdName' }
    field :office_type, { list: 'IdName' }
    field :politics, { list: 'IdName' }
    field :relationship_statuses, { list: 'int' }
    field :user_adclusters, { list: 'IdName' }
    field :work_employers, { list: 'IdName' }
    field :work_positions, { list: 'IdName' }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
