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

  class AdAccount < AdObject
    ROLE = [
      "ADMIN",
      "GENERAL_USER",
      "REPORTS_ONLY",
      "INSTAGRAM_ADVERTISER",
      "INSTAGRAM_MANAGER",
      "CREATIVE",
      "FB_EMPLOYEE_DSO_ADVERTISER",
    ]

    PERMITTED_ROLES = [
      "ADMIN",
      "GENERAL_USER",
      "REPORTS_ONLY",
      "INSTAGRAM_ADVERTISER",
      "INSTAGRAM_MANAGER",
      "CREATIVE",
      "FB_EMPLOYEE_DSO_ADVERTISER",
    ]


    field :account_id, 'string'
    field :account_status, 'int'
    field :age, 'double'
    field :agency_client_declaration, 'AgencyClientDeclaration'
    field :amount_spent, 'string'
    field :attribution_spec, { list: 'AttributionSpec' }
    field :balance, 'string'
    field :business, 'Business'
    field :business_city, 'string'
    field :business_country_code, 'string'
    field :business_name, 'string'
    field :business_state, 'string'
    field :business_street, 'string'
    field :business_street2, 'string'
    field :business_zip, 'string'
    field :can_create_brand_lift_study, 'bool'
    field :capabilities, { list: 'string' }
    field :created_time, 'datetime'
    field :currency, 'string'
    field :disable_reason, 'int'
    field :end_advertiser, 'string'
    field :end_advertiser_name, 'string'
    field :extended_credit_invoice_group, 'ExtendedCreditInvoiceGroup'
    field :failed_delivery_checks, { list: 'DeliveryCheck' }
    field :funding_source, 'string'
    field :funding_source_details, 'FundingSourceDetails'
    field :has_migrated_permissions, 'bool'
    field :id, 'string'
    field :io_number, 'string'
    field :is_attribution_spec_system_default, 'bool'
    field :is_direct_deals_enabled, 'bool'
    field :is_notifications_enabled, 'bool'
    field :is_personal, 'int'
    field :is_prepay_account, 'bool'
    field :is_tax_id_required, 'bool'
    field :line_numbers, { list: 'int' }
    field :media_agency, 'string'
    field :min_campaign_group_spend_cap, 'string'
    field :min_daily_budget, 'int'
    field :name, 'string'
    field :offsite_pixels_tos_accepted, 'bool'
    field :owner, 'string'
    field :partner, 'string'
    field :rf_spec, 'ReachFrequencySpec'
    field :show_checkout_experience, 'bool'
    field :spend_cap, 'string'
    field :tax_id, 'string'
    field :tax_id_status, 'int'
    field :tax_id_type, 'string'
    field :timezone_id, 'int'
    field :timezone_name, 'string'
    field :timezone_offset_hours_utc, 'double'
    field :tos_accepted, 'hash'
    field :user_role, 'string'
    has_no_delete

    has_edge :activities do |edge|
      edge.get 'AdActivity' do |api|
        api.has_param :add_children, 'bool'
        api.has_param :business_id, 'string'
        api.has_param :category, { enum: -> { AdActivity::CATEGORY }}
        api.has_param :extra_oids, { list: 'string' }
        api.has_param :oid, 'string'
        api.has_param :since, 'datetime'
        api.has_param :uid, 'int'
        api.has_param :until, 'datetime'
      end
    end

    has_edge :ad_place_page_sets do |edge|
      edge.get 'AdPlacePageSet'
      edge.post 'AdPlacePageSet' do |api|
        api.has_param :location_types, { list: { enum: -> { AdPlacePageSet::LOCATION_TYPES }} }
        api.has_param :name, 'string'
        api.has_param :parent_page, 'string'
      end
    end

    has_edge :adasset_feeds do |edge|
      edge.get
    end

    has_edge :adcreatives do |edge|
      edge.get 'AdCreative'
      edge.post 'AdCreative' do |api|
        api.has_param :adlabels, { list: 'object' }
        api.has_param :applink_treatment, { enum: -> { AdCreative::APPLINK_TREATMENT }}
        api.has_param :body, 'string'
        api.has_param :branded_content_sponsor_page_id, 'string'
        api.has_param :dynamic_ad_voice, { enum: -> { AdCreative::DYNAMIC_AD_VOICE }}
        api.has_param :image_crops, 'hash'
        api.has_param :image_file, 'string'
        api.has_param :image_hash, 'string'
        api.has_param :image_url, 'string'
        api.has_param :instagram_actor_id, 'string'
        api.has_param :instagram_permalink_url, 'string'
        api.has_param :link_og_id, 'string'
        api.has_param :link_url, 'string'
        api.has_param :name, 'string'
        api.has_param :object_id, 'int'
        api.has_param :object_story_id, 'string'
        api.has_param :object_story_spec, 'AdCreativeObjectStorySpec'
        api.has_param :object_type, 'string'
        api.has_param :platform_customizations, 'object'
        api.has_param :product_set_id, 'string'
        api.has_param :recommender_settings, 'hash'
        api.has_param :template_url, 'string'
        api.has_param :template_url_spec, 'object'
        api.has_param :thumbnail_url, 'string'
        api.has_param :title, 'string'
        api.has_param :url_tags, 'string'
        api.has_param :use_page_actor_override, 'bool'
      end
    end

    has_edge :adcreativesbylabels do |edge|
      edge.get 'AdCreative' do |api|
        api.has_param :ad_label_ids, { list: 'string' }
        api.has_param :operator, { enum: -> { AdCreative::OPERATOR }}
      end
    end

    has_edge :adimages do |edge|
      edge.delete do |api|
        api.has_param :hash, 'string'
      end
      edge.get 'AdImage' do |api|
        api.has_param :biz_tag_id, 'int'
        api.has_param :business_id, 'string'
        api.has_param :hashes, { list: 'string' }
        api.has_param :minheight, 'int'
        api.has_param :minwidth, 'int'
        api.has_param :name, 'string'
      end
      edge.post list: 'AdImage' do |api|
        api.has_param :bytes, 'object'
        api.has_param :copy_from, 'object'
        api.accepts_files!
      end
    end

    has_edge :adlabels do |edge|
      edge.get 'AdLabel'
      edge.post 'AdLabel' do |api|
        api.has_param :name, 'string'
      end
    end

    has_edge :adlanguage_assets do |edge|
      edge.post do |api|
        api.has_param :bodies, { list: 'object' }
        api.has_param :call_to_action_type, { enum: %w{OPEN_LINK LIKE_PAGE SHOP_NOW PLAY_GAME INSTALL_APP USE_APP CALL CALL_ME INSTALL_MOBILE_APP USE_MOBILE_APP MOBILE_DOWNLOAD BOOK_TRAVEL LISTEN_MUSIC WATCH_VIDEO LEARN_MORE SIGN_UP DOWNLOAD WATCH_MORE NO_BUTTON VISIT_PAGES_FEED APPLY_NOW BUY_NOW GET_OFFER GET_OFFER_VIEW BUY_TICKETS UPDATE_APP GET_DIRECTIONS BUY MESSAGE_PAGE DONATE SUBSCRIBE SAY_THANKS SELL_NOW SHARE DONATE_NOW GET_QUOTE CONTACT_US ORDER_NOW ADD_TO_CART VIDEO_ANNOTATION MOMENTS RECORD_NOW GET_SHOWTIMES LISTEN_NOW EVENT_RSVP WHATSAPP_MESSAGE }}
        api.has_param :default_language, 'string'
        api.has_param :descriptions, { list: 'object' }
        api.has_param :image, 'object'
        api.has_param :link_urls, { list: 'object' }
        api.has_param :titles, { list: 'object' }
        api.has_param :video, 'object'
      end
    end

    has_edge :adreportruns do |edge|
      edge.get 'AdReportRun'
    end

    has_edge :adreportschedules do |edge|
      edge.get
    end

    has_edge :adrules_history do |edge|
      edge.get 'AdAccountAdRulesHistory' do |api|
        api.has_param :action, { enum: -> { AdAccountAdRulesHistory::ACTION }}
        api.has_param :hide_no_changes, 'bool'
        api.has_param :object_id, 'string'
      end
    end

    has_edge :adrules_library do |edge|
      edge.post 'AdRule' do |api|
        api.has_param :account_id, 'string'
        api.has_param :evaluation_spec, 'object'
        api.has_param :execution_spec, 'object'
        api.has_param :name, 'string'
        api.has_param :schedule_spec, 'object'
        api.has_param :status, { enum: -> { AdRule::STATUS }}
      end
    end

    has_edge :ads do |edge|
      edge.get 'Ad' do |api|
        api.has_param :ad_draft_id, 'string'
        api.has_param :date_preset, { enum: -> { Ad::DATE_PRESET }}
        api.has_param :effective_status, { list: 'string' }
        api.has_param :time_range, 'object'
        api.has_param :updated_since, 'int'
      end
      edge.post 'Ad' do |api|
        api.has_param :adlabels, { list: 'object' }
        api.has_param :adset_id, 'int'
        api.has_param :adset_spec, 'AdSet'
        api.has_param :bid_amount, 'int'
        api.has_param :creative, 'AdCreative'
        api.has_param :date_format, 'string'
        api.has_param :display_sequence, 'int'
        api.has_param :execution_options, { list: { enum: -> { Ad::EXECUTION_OPTIONS }} }
        api.has_param :name, 'string'
        api.has_param :status, { enum: -> { Ad::STATUS }}
        api.has_param :tracking_specs, 'object'
        api.accepts_files!
      end
    end

    has_edge :adsbylabels do |edge|
      edge.get 'Ad' do |api|
        api.has_param :ad_label_ids, { list: 'string' }
        api.has_param :operator, { enum: -> { Ad::OPERATOR }}
      end
    end

    has_edge :adsets do |edge|
      edge.get 'AdSet' do |api|
        api.has_param :ad_draft_id, 'string'
        api.has_param :date_preset, { enum: -> { AdSet::DATE_PRESET }}
        api.has_param :effective_status, { list: { enum: -> { AdSet::EFFECTIVE_STATUS }} }
        api.has_param :is_completed, 'bool'
        api.has_param :time_range, 'object'
      end
      edge.post 'AdSet' do |api|
        api.has_param :adlabels, { list: 'object' }
        api.has_param :adset_schedule, { list: 'object' }
        api.has_param :attribution_spec, { list: 'hash' }
        api.has_param :bid_amount, 'int'
        api.has_param :bid_strategy, { enum: -> { AdSet::BID_STRATEGY }}
        api.has_param :billing_event, { enum: -> { AdSet::BILLING_EVENT }}
        api.has_param :campaign_id, 'string'
        api.has_param :campaign_spec, 'object'
        api.has_param :creative_sequence, { list: 'string' }
        api.has_param :daily_budget, 'int'
        api.has_param :daily_imps, 'int'
        api.has_param :destination_type, { enum: -> { AdSet::DESTINATION_TYPE }}
        api.has_param :end_time, 'datetime'
        api.has_param :execution_options, { list: { enum: -> { AdSet::EXECUTION_OPTIONS }} }
        api.has_param :frequency_control_specs, { list: 'object' }
        api.has_param :lifetime_budget, 'int'
        api.has_param :lifetime_imps, 'int'
        api.has_param :name, 'string'
        api.has_param :optimization_goal, { enum: -> { AdSet::OPTIMIZATION_GOAL }}
        api.has_param :pacing_type, { list: 'string' }
        api.has_param :promoted_object, 'object'
        api.has_param :rf_prediction_id, 'string'
        api.has_param :start_time, 'datetime'
        api.has_param :status, { enum: -> { AdSet::STATUS }}
        api.has_param :targeting, 'Targeting'
        api.has_param :time_based_ad_rotation_id_blocks, { list: { list: 'int' } }
        api.has_param :time_based_ad_rotation_intervals, { list: 'int' }
      end
    end

    has_edge :adsetsbylabels do |edge|
      edge.get 'AdSet' do |api|
        api.has_param :ad_label_ids, { list: 'string' }
        api.has_param :operator, { enum: -> { AdSet::OPERATOR }}
      end
    end

    has_edge :adspixels do |edge|
      edge.get 'AdsPixel'
      edge.post 'AdsPixel' do |api|
        api.has_param :name, 'string'
      end
    end

    has_edge :advertisable_applications do |edge|
      edge.get do |api|
        api.has_param :app_id, 'string'
        api.has_param :business_id, 'string'
      end
    end

    has_edge :advideos do |edge|
      edge.get do |api|
        api.has_param :max_aspect_ratio, 'double'
        api.has_param :maxheight, 'int'
        api.has_param :maxlength, 'int'
        api.has_param :maxwidth, 'int'
        api.has_param :min_aspect_ratio, 'double'
        api.has_param :minheight, 'int'
        api.has_param :minlength, 'int'
        api.has_param :minwidth, 'int'
        api.has_param :title, 'string'
      end
      edge.post do |api|
        api.has_param :composer_session_id, 'string'
        api.has_param :description, 'string'
        api.has_param :end_offset, 'int'
        api.has_param :file_size, 'int'
        api.has_param :file_url, 'string'
        api.has_param :fisheye_video_cropped, 'bool'
        api.has_param :front_z_rotation, 'double'
        api.has_param :is_explicit_share, 'bool'
        api.has_param :manual_privacy, 'bool'
        api.has_param :name, 'string'
        api.has_param :og_action_type_id, 'string'
        api.has_param :og_icon_id, 'string'
        api.has_param :og_object_id, 'string'
        api.has_param :og_phrase, 'string'
        api.has_param :og_suggestion_mechanism, 'string'
        api.has_param :original_fov, 'int'
        api.has_param :original_projection_type, { enum: %w{equirectangular cubemap equiangular_cubemap half_equirectangular }}
        api.has_param :referenced_sticker_id, 'string'
        api.has_param :slideshow_spec, 'hash'
        api.has_param :start_offset, 'int'
        api.has_param :time_since_original_post, 'int'
        api.has_param :title, 'string'
        api.has_param :unpublished_content_type, { enum: %w{SCHEDULED DRAFT ADS_POST INLINE_CREATED PUBLISHED }}
        api.has_param :upload_phase, { enum: %w{start transfer finish cancel }}
        api.has_param :upload_session_id, 'string'
        api.has_param :video_file_chunk, 'string'
        api.accepts_files!
      end
    end

    has_edge :agencies do |edge|
      edge.delete do |api|
        api.has_param :business, 'string'
      end
      edge.post do |api|
        api.has_param :business, 'string'
        api.has_param :permitted_roles, { list: { enum: %w{ADMIN GENERAL_USER REPORTS_ONLY INSTAGRAM_ADVERTISER INSTAGRAM_MANAGER CREATIVE FB_EMPLOYEE_DSO_ADVERTISER }} }
      end
    end

    has_edge :applications do |edge|
      edge.get
    end

    has_edge :assigned_users do |edge|
      edge.delete do |api|
        api.has_param :user, 'int'
      end
      edge.get 'AssignedUser' do |api|
        api.has_param :business, 'string'
      end
      edge.post 'AdAccount' do |api|
        api.has_param :role, { enum: -> { AdAccount::ROLE }}
        api.has_param :user, 'int'
      end
    end

    has_edge :async_batch_requests do |edge|
      edge.post 'Campaign' do |api|
        api.has_param :adbatch, { list: 'object' }
        api.has_param :name, 'string'
      end
    end

    has_edge :asyncadrequestsets do |edge|
      edge.get 'AdAsyncRequestSet' do |api|
        api.has_param :is_completed, 'bool'
      end
      edge.post 'AdAsyncRequestSet' do |api|
        api.has_param :ad_specs, { list: 'hash' }
        api.has_param :name, 'string'
        api.has_param :notification_mode, { enum: %w{OFF ON_COMPLETE }}
        api.has_param :notification_uri, 'string'
      end
    end

    has_edge :audiencereplace do |edge|
      edge.post do |api|
        api.has_param :payload, 'object'
        api.has_param :session, 'object'
      end
    end

    has_edge :broadtargetingcategories do |edge|
      edge.get 'BroadTargetingCategories' do |api|
        api.has_param :custom_categories_only, 'bool'
      end
    end

    has_edge :campaigns do |edge|
      edge.delete do |api|
        api.has_param :before_date, 'datetime'
        api.has_param :delete_strategy, { enum: -> { Campaign::DELETE_STRATEGY }}
        api.has_param :object_count, 'int'
      end
      edge.get 'Campaign' do |api|
        api.has_param :date_preset, { enum: -> { Campaign::DATE_PRESET }}
        api.has_param :effective_status, { list: { enum: -> { Campaign::EFFECTIVE_STATUS }} }
        api.has_param :is_completed, 'bool'
      end
      edge.post 'Campaign' do |api|
        api.has_param :adlabels, { list: 'object' }
        api.has_param :budget_rebalance_flag, 'bool'
        api.has_param :buying_type, 'string'
        api.has_param :execution_options, { list: { enum: -> { Campaign::EXECUTION_OPTIONS }} }
        api.has_param :iterative_split_test_configs, { list: 'object' }
        api.has_param :name, 'string'
        api.has_param :objective, { enum: -> { Campaign::OBJECTIVE }}
        api.has_param :promoted_object, 'object'
        api.has_param :spend_cap, 'int'
        api.has_param :status, { enum: -> { Campaign::STATUS }}
      end
    end

    has_edge :campaignsbylabels do |edge|
      edge.get 'Campaign' do |api|
        api.has_param :ad_label_ids, { list: 'string' }
        api.has_param :operator, { enum: -> { Campaign::OPERATOR }}
      end
    end

    has_edge :customaudiences do |edge|
      edge.get 'CustomAudience' do |api|
        api.has_param :business_id, 'string'
        api.has_param :fields, { list: { enum: -> { CustomAudience::FIELDS }} }
        api.has_param :filtering, { list: 'object' }
        api.has_param :pixel_id, 'string'
      end
      edge.post 'CustomAudience' do |api|
        api.has_param :allowed_domains, { list: 'string' }
        api.has_param :claim_objective, { enum: -> { CustomAudience::CLAIM_OBJECTIVE }}
        api.has_param :content_type, { enum: -> { CustomAudience::CONTENT_TYPE }}
        api.has_param :dataset_id, 'string'
        api.has_param :description, 'string'
        api.has_param :event_source_group, 'string'
        api.has_param :is_value_based, 'bool'
        api.has_param :list_of_accounts, { list: 'int' }
        api.has_param :lookalike_spec, 'string'
        api.has_param :name, 'string'
        api.has_param :opt_out_link, 'string'
        api.has_param :origin_audience_id, 'string'
        api.has_param :pixel_id, 'string'
        api.has_param :prefill, 'bool'
        api.has_param :product_set_id, 'string'
        api.has_param :retention_days, 'int'
        api.has_param :rule, 'string'
        api.has_param :rule_aggregation, 'string'
        api.has_param :subtype, { enum: -> { CustomAudience::SUBTYPE }}
      end
    end

    has_edge :customaudiencestos do |edge|
      edge.get 'CustomAudiencesTos'
    end

    has_edge :customconversions do |edge|
      edge.post 'CustomConversion' do |api|
        api.has_param :advanced_rule, 'string'
        api.has_param :custom_event_type, { enum: -> { CustomConversion::CUSTOM_EVENT_TYPE }}
        api.has_param :default_conversion_value, 'double'
        api.has_param :description, 'string'
        api.has_param :event_source_id, 'string'
        api.has_param :name, 'string'
        api.has_param :rule, 'string'
      end
    end

    has_edge :delivery_estimate do |edge|
      edge.get 'AdAccountDeliveryEstimate' do |api|
        api.has_param :optimization_goal, { enum: -> { AdAccountDeliveryEstimate::OPTIMIZATION_GOAL }}
        api.has_param :promoted_object, 'object'
        api.has_param :targeting_spec, 'Targeting'
      end
    end

    has_edge :generatepreviews do |edge|
      edge.get 'AdPreview' do |api|
        api.has_param :ad_format, { enum: -> { AdPreview::AD_FORMAT }}
        api.has_param :creative, 'AdCreative'
        api.has_param :dynamic_creative_spec, 'object'
        api.has_param :end_date, 'datetime'
        api.has_param :height, 'int'
        api.has_param :place_page_id, 'int'
        api.has_param :post, 'object'
        api.has_param :product_item_ids, { list: 'string' }
        api.has_param :start_date, 'datetime'
        api.has_param :width, 'int'
      end
    end

    has_edge :insights do |edge|
      edge.get 'AdsInsights' do |api|
        api.has_param :action_attribution_windows, { list: { enum: -> { AdsInsights::ACTION_ATTRIBUTION_WINDOWS }} }
        api.has_param :action_breakdowns, { list: { enum: -> { AdsInsights::ACTION_BREAKDOWNS }} }
        api.has_param :action_report_time, { enum: -> { AdsInsights::ACTION_REPORT_TIME }}
        api.has_param :breakdowns, { list: { enum: -> { AdsInsights::BREAKDOWNS }} }
        api.has_param :date_preset, { enum: -> { AdsInsights::DATE_PRESET }}
        api.has_param :default_summary, 'bool'
        api.has_param :export_columns, { list: 'string' }
        api.has_param :export_format, 'string'
        api.has_param :export_name, 'string'
        api.has_param :fields, { list: { enum: -> { AdsInsights::SUMMARY }} }
        api.has_param :filtering, { list: 'object' }
        api.has_param :level, { enum: -> { AdsInsights::LEVEL }}
        api.has_param :product_id_limit, 'int'
        api.has_param :sort, { list: 'string' }
        api.has_param :summary, { list: { enum: -> { AdsInsights::SUMMARY }} }
        api.has_param :summary_action_breakdowns, { list: { enum: -> { AdsInsights::SUMMARY_ACTION_BREAKDOWNS }} }
        api.has_param :time_increment, 'string'
        api.has_param :time_range, 'object'
        api.has_param :time_ranges, { list: 'object' }
        api.has_param :use_account_attribution_setting, 'bool'
      end
      edge.post 'AdReportRun' do |api|
        api.has_param :action_attribution_windows, { list: { enum: -> { AdsInsights::ACTION_ATTRIBUTION_WINDOWS }} }
        api.has_param :action_breakdowns, { list: { enum: -> { AdsInsights::ACTION_BREAKDOWNS }} }
        api.has_param :action_report_time, { enum: -> { AdsInsights::ACTION_REPORT_TIME }}
        api.has_param :breakdowns, { list: { enum: -> { AdsInsights::BREAKDOWNS }} }
        api.has_param :date_preset, { enum: -> { AdsInsights::DATE_PRESET }}
        api.has_param :default_summary, 'bool'
        api.has_param :export_columns, { list: 'string' }
        api.has_param :export_format, 'string'
        api.has_param :export_name, 'string'
        api.has_param :fields, { list: { enum: -> { AdsInsights::SUMMARY }} }
        api.has_param :filtering, { list: 'object' }
        api.has_param :level, { enum: -> { AdsInsights::LEVEL }}
        api.has_param :product_id_limit, 'int'
        api.has_param :sort, { list: 'string' }
        api.has_param :summary, { list: { enum: -> { AdsInsights::SUMMARY }} }
        api.has_param :summary_action_breakdowns, { list: { enum: -> { AdsInsights::SUMMARY_ACTION_BREAKDOWNS }} }
        api.has_param :time_increment, 'string'
        api.has_param :time_range, 'object'
        api.has_param :time_ranges, { list: 'object' }
        api.has_param :use_account_attribution_setting, 'bool'
      end
    end

    has_edge :instagram_accounts do |edge|
      edge.get
    end

    has_edge :leadgen_forms do |edge|
      edge.get 'LeadgenForm' do |api|
        api.has_param :query, 'string'
      end
    end

    has_edge :minimum_budgets do |edge|
      edge.get 'MinimumBudget' do |api|
        api.has_param :bid_amount, 'int'
      end
    end

    has_edge :offline_conversion_data_sets do |edge|
      edge.get 'OfflineConversionDataSet'
    end

    has_edge :offsitepixels do |edge|
      edge.get 'OffsitePixel'
      edge.post 'OffsitePixel' do |api|
        api.has_param :name, 'string'
        api.has_param :tag, { enum: -> { OffsitePixel::TAG }}
      end
    end

    has_edge :partnercategories do |edge|
      edge.get 'PartnerCategory' do |api|
        api.has_param :hide_pc, 'bool'
        api.has_param :is_exclusion, 'bool'
        api.has_param :private_or_public, { enum: -> { PartnerCategory::PRIVATE_OR_PUBLIC }}
        api.has_param :targeting_type, 'string'
      end
    end

    has_edge :partners do |edge|
      edge.get 'AdsDataPartner'
    end

    has_edge :pending_users do |edge|
      edge.delete do |api|
        api.has_param :request_id, 'int'
      end
      edge.post 'AdAccount' do |api|
        api.has_param :request_id, 'int'
        api.has_param :role, { enum: -> { AdAccount::ROLE }}
      end
    end

    has_edge :product_audiences do |edge|
      edge.post 'CustomAudience' do |api|
        api.has_param :associated_audience_id, 'int'
        api.has_param :creation_params, 'hash'
        api.has_param :description, 'string'
        api.has_param :exclusions, { list: 'object' }
        api.has_param :inclusions, { list: 'object' }
        api.has_param :name, 'string'
        api.has_param :opt_out_link, 'string'
        api.has_param :parent_audience_id, 'int'
        api.has_param :product_set_id, 'string'
        api.has_param :subtype, { enum: -> { CustomAudience::SUBTYPE }}
        api.has_param :tags, { list: 'string' }
      end
    end

    has_edge :publisher_block_lists do |edge|
      edge.get
      edge.post do |api|
        api.has_param :block_list_id, 'object'
        api.has_param :draft_id, 'object'
        api.has_param :name, 'string'
      end
    end

    has_edge :reachestimate do |edge|
      edge.get 'ReachEstimate' do |api|
        api.has_param :object_store_url, 'string'
        api.has_param :targeting_spec, 'Targeting'
      end
    end

    has_edge :reachfrequencypredictions do |edge|
      edge.get 'ReachFrequencyPrediction'
      edge.post 'ReachFrequencyPrediction' do |api|
        api.has_param :budget, 'int'
        api.has_param :campaign_group_id, 'string'
        api.has_param :day_parting_schedule, { list: 'object' }
        api.has_param :destination_id, 'int'
        api.has_param :destination_ids, { list: 'string' }
        api.has_param :end_time, 'int'
        api.has_param :frequency_cap, 'int'
        api.has_param :instream_packages, { list: { enum: -> { ReachFrequencyPrediction::INSTREAM_PACKAGES }} }
        api.has_param :interval_frequency_cap_reset_period, 'int'
        api.has_param :num_curve_points, 'int'
        api.has_param :objective, 'string'
        api.has_param :prediction_mode, 'int'
        api.has_param :reach, 'int'
        api.has_param :rf_prediction_id_to_share, 'string'
        api.has_param :start_time, 'int'
        api.has_param :stop_time, 'int'
        api.has_param :story_event_type, 'int'
        api.has_param :target_spec, 'Targeting'
      end
    end

    has_edge :roas do |edge|
      edge.get 'AdAccountRoas' do |api|
        api.has_param :fields, { list: { enum: -> { AdAccountRoas::FIELDS }} }
        api.has_param :filtering, { list: 'object' }
        api.has_param :time_increment, 'string'
        api.has_param :time_range, 'object'
      end
    end

    has_edge :sponsored_message_ads do |edge|
      edge.post do |api|
        api.has_param :bid_amount, 'int'
        api.has_param :daily_budget, 'int'
        api.has_param :message_creative_id, 'string'
        api.has_param :targeting, 'Targeting'
      end
    end

    has_edge :targetingbrowse do |edge|
      edge.get 'AdAccountTargetingUnified' do |api|
        api.has_param :include_nodes, 'bool'
        api.has_param :limit_type, { enum: -> { AdAccountTargetingUnified::LIMIT_TYPE }}
      end
    end

    has_edge :targetingsearch do |edge|
      edge.get 'AdAccountTargetingUnified' do |api|
        api.has_param :limit_type, { enum: -> { AdAccountTargetingUnified::LIMIT_TYPE }}
        api.has_param :q, 'string'
      end
    end

    has_edge :targetingsentencelines do |edge|
      edge.get 'TargetingSentenceLine' do |api|
        api.has_param :discard_ages, 'bool'
        api.has_param :discard_placements, 'bool'
        api.has_param :targeting_spec, 'Targeting'
      end
    end

    has_edge :targetingsuggestions do |edge|
      edge.get 'AdAccountTargetingUnified' do |api|
        api.has_param :limit_type, { enum: -> { AdAccountTargetingUnified::LIMIT_TYPE }}
        api.has_param :targeting_list, { list: 'object' }
      end
    end

    has_edge :targetingvalidation do |edge|
      edge.get 'AdAccountTargetingUnified' do |api|
        api.has_param :id_list, { list: 'int' }
        api.has_param :is_exclusion, 'bool'
        api.has_param :name_list, { list: 'string' }
        api.has_param :targeting_list, { list: 'object' }
      end
    end

    has_edge :tracking do |edge|
      edge.delete do |api|
        api.has_param :tracking_specs, 'object'
      end
      edge.post do |api|
        api.has_param :tracking_specs, 'object'
      end
    end

    has_edge :user_match do |edge|
      edge.delete do |api|
        api.has_param :bidirectional, 'bool'
        api.has_param :namespace, 'string'
        api.has_param :payload, 'object'
      end
      edge.post do |api|
        api.has_param :action, 'string'
        api.has_param :bidirectional, 'bool'
        api.has_param :namespace, 'string'
        api.has_param :payload, 'object'
        api.has_param :retention, 'string'
      end
    end

    has_edge :users do |edge|
      edge.get 'AdAccountUser'
    end

  end
end
