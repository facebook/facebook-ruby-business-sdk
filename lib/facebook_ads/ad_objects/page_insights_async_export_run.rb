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

  class PageInsightsAsyncExportRun < AdObject

    field :data_level, 'string'
    field :filters, { list: 'object' }
    field :format, 'string'
    field :gen_report_date, 'int'
    field :id, 'string'
    field :report_end_date, 'int'
    field :report_start_date, 'int'
    field :sorters, { list: 'object' }
    field :status, 'string'
    has_no_post
    has_no_delete

  end
end
