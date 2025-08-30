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

  class AudioVisualReferenceMatch < AdObject

    field :audio_conflicting_segments, { list: 'object' }
    field :audio_current_conflict_resolved_segments, { list: 'object' }
    field :audio_segment_resolution_history, { list: 'object' }
    field :conflict_status, 'string'
    field :conflict_type, 'string'
    field :conflicting_countries, { list: 'string' }
    field :country_resolution_history, { list: 'map<string, list<Object>>' }
    field :creation_time, 'datetime'
    field :current_conflict_resolved_countries, { list: 'hash' }
    field :displayed_match_state, 'string'
    field :dispute_form_data_entries_with_translations, { list: 'object' }
    field :expiration_time, 'datetime'
    field :id, 'string'
    field :is_disputable, 'bool'
    field :match_state, 'string'
    field :matched_overlap_percentage, 'double'
    field :matched_owner_match_duration_in_sec, 'double'
    field :matched_reference_owner, 'Profile'
    field :modification_history, { list: 'object' }
    field :num_matches_on_matched_side, 'int'
    field :num_matches_on_ref_side, 'int'
    field :ref_owner_match_duration_in_sec, 'double'
    field :reference_overlap_percentage, 'double'
    field :reference_owner, 'Profile'
    field :rejection_form_data_entries_with_translations, { list: 'object' }
    field :resolution_details, 'string'
    field :resolution_reason, 'string'
    field :update_time, 'datetime'
    field :views_on_matched_side, 'int'
    field :visual_conflicting_segments, { list: 'object' }
    field :visual_current_conflict_resolved_segments, { list: 'object' }
    field :visual_segment_resolution_history, { list: 'object' }
    has_no_get
    has_no_post
    has_no_delete

  end
end
