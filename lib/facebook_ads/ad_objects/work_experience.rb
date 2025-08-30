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

  class WorkExperience < AdObject

    field :description, 'string'
    field :employer, 'Page'
    field :end_date, 'string'
    field :from, 'User'
    field :id, 'string'
    field :location, 'Page'
    field :position, 'Page'
    field :projects, { list: 'object' }
    field :start_date, 'string'
    field :with, { list: 'User' }
    has_no_post
    has_no_delete

  end
end
