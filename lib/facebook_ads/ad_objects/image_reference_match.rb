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

  class ImageReferenceMatch < AdObject

    field :conflicting_countries, { list: 'string' }
    field :country_resolution_history, { list: 'map<string, list<Object>>' }
    field :creation_time, 'datetime'
    field :current_conflict_resolved_countries, { list: 'hash' }
    field :displayed_match_state, 'string'
    field :dispute_form_data_entries_with_translations, { list: 'object' }
    field :expiration_time, 'datetime'
    field :id, 'string'
    field :match_state, 'string'
    field :matched_reference_copyright, 'ImageCopyright'
    field :matched_reference_owner, 'Profile'
    field :modification_history, { list: 'object' }
    field :reference_copyright, 'ImageCopyright'
    field :reference_owner, 'Profile'
    field :rejection_form_data_entries_with_translations, { list: 'object' }
    field :resolution_reason, 'string'
    field :update_time, 'datetime'
    has_no_post
    has_no_delete

  end
end
