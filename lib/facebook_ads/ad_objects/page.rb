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

  class Page < AdObject
    ATTIRE = [
      "Unspecified",
      "Casual",
      "Dressy",
    ]

    FOOD_STYLES = [
      "Afghani",
      "American (New)",
      "American (Traditional)",
      "Asian Fusion",
      "Barbeque",
      "Brazilian",
      "Breakfast",
      "British",
      "Brunch",
      "Buffets",
      "Burgers",
      "Burmese",
      "Cajun&#x2F;Creole",
      "Caribbean",
      "Chinese",
      "Creperies",
      "Cuban",
      "Delis",
      "Diners",
      "Ethiopian",
      "Fast Food",
      "Filipino",
      "Fondue",
      "Food Stands",
      "French",
      "German",
      "Greek and Mediterranean",
      "Hawaiian",
      "Himalayan&#x2F;Nepalese",
      "Hot Dogs",
      "Indian&#x2F;Pakistani",
      "Irish",
      "Italian",
      "Japanese",
      "Korean",
      "Latin American",
      "Mexican",
      "Middle Eastern",
      "Moroccan",
      "Pizza",
      "Russian",
      "Sandwiches",
      "Seafood",
      "Singaporean",
      "Soul Food",
      "Southern",
      "Spanish&#x2F;Basque",
      "Steakhouses",
      "Sushi Bars",
      "Taiwanese",
      "Tapas Bars",
      "Tex-Mex",
      "Thai",
      "Turkish",
      "Vegan",
      "Vegetarian",
      "Vietnamese",
    ]

    TASKS = [
      "MANAGE",
      "CREATE_CONTENT",
      "MODERATE",
      "MODERATE_COMMUNITY",
      "ADVERTISE",
      "ANALYZE",
      "CREATE_LIVE_CONTENT",
    ]

    LOCALE = [
      "EN_US",
      "IT_IT",
      "FR_FR",
      "ES_ES",
      "ES_LA",
      "DE_DE",
      "EN_GB",
      "PT_BR",
      "ZH_TW",
      "ZH_HK",
      "TR_TR",
      "AR_AR",
      "CS_CZ",
      "DA_DK",
      "FI_FI",
      "HE_IL",
      "HI_IN",
      "HU_HU",
      "ID_ID",
      "JA_JP",
      "KO_KR",
      "NB_NO",
      "NL_NL",
      "PL_PL",
      "PT_PT",
      "RO_RO",
      "RU_RU",
      "SV_SE",
      "TH_TH",
      "VI_VN",
      "ZH_CN",
    ]


    field :about, 'string'
    field :access_token, 'string'
    field :ad_campaign, 'AdSet'
    field :affiliation, 'string'
    field :app_id, 'string'
    field :app_links, 'AppLinks'
    field :artists_we_like, 'string'
    field :attire, 'string'
    field :awards, 'string'
    field :band_interests, 'string'
    field :band_members, 'string'
    field :best_page, 'Page'
    field :bio, 'string'
    field :birthday, 'string'
    field :booking_agent, 'string'
    field :built, 'string'
    field :business, 'object'
    field :can_checkin, 'bool'
    field :can_post, 'bool'
    field :category, 'string'
    field :category_list, { list: 'PageCategory' }
    field :checkins, 'int'
    field :company_overview, 'string'
    field :connected_instagram_account, 'ShadowIgUser'
    field :contact_address, 'MailingAddress'
    field :context, 'OpenGraphContext'
    field :copyright_attribution_insights, 'CopyrightAttributionInsights'
    field :copyright_whitelisted_ig_partners, { list: 'string' }
    field :country_page_likes, 'int'
    field :cover, 'CoverPhoto'
    field :culinary_team, 'string'
    field :current_location, 'string'
    field :description, 'string'
    field :description_html, 'string'
    field :directed_by, 'string'
    field :display_subtext, 'string'
    field :displayed_message_response_time, 'string'
    field :emails, { list: 'string' }
    field :engagement, 'Engagement'
    field :fan_count, 'int'
    field :featured_video, 'object'
    field :features, 'string'
    field :food_styles, { list: 'string' }
    field :founded, 'string'
    field :general_info, 'string'
    field :general_manager, 'string'
    field :genre, 'string'
    field :global_brand_page_name, 'string'
    field :global_brand_root_id, 'string'
    field :has_added_app, 'bool'
    field :has_whatsapp_number, 'bool'
    field :hometown, 'string'
    field :hours, 'hash'
    field :id, 'string'
    field :impressum, 'string'
    field :influences, 'string'
    field :instagram_business_account, 'ShadowIgUser'
    field :instant_articles_review_status, 'string'
    field :is_always_open, 'bool'
    field :is_chain, 'bool'
    field :is_community_page, 'bool'
    field :is_eligible_for_branded_content, 'bool'
    field :is_messenger_bot_get_started_enabled, 'bool'
    field :is_messenger_platform_bot, 'bool'
    field :is_owned, 'bool'
    field :is_permanently_closed, 'bool'
    field :is_published, 'bool'
    field :is_unclaimed, 'bool'
    field :is_verified, 'bool'
    field :is_webhooks_subscribed, 'bool'
    field :keywords, 'object'
    field :leadgen_form_preview_details, 'LeadGenFormPreviewDetails'
    field :leadgen_has_crm_integration, 'bool'
    field :leadgen_has_fat_ping_crm_integration, 'bool'
    field :leadgen_tos_acceptance_time, 'datetime'
    field :leadgen_tos_accepted, 'bool'
    field :leadgen_tos_accepting_user, 'User'
    field :link, 'string'
    field :location, 'Location'
    field :members, 'string'
    field :merchant_id, 'string'
    field :merchant_review_status, 'string'
    field :messenger_ads_default_icebreakers, { list: 'string' }
    field :messenger_ads_default_page_welcome_message, 'object'
    field :messenger_ads_default_quick_replies, { list: 'string' }
    field :messenger_ads_quick_replies_type, 'string'
    field :mission, 'string'
    field :mpg, 'string'
    field :name, 'string'
    field :name_with_location_descriptor, 'string'
    field :network, 'string'
    field :new_like_count, 'int'
    field :offer_eligible, 'bool'
    field :overall_star_rating, 'double'
    field :page_token, 'string'
    field :parent_page, 'Page'
    field :parking, 'PageParking'
    field :payment_options, 'PagePaymentOptions'
    field :personal_info, 'string'
    field :personal_interests, 'string'
    field :pharma_safety_info, 'string'
    field :phone, 'string'
    field :place_type, 'string'
    field :plot_outline, 'string'
    field :preferred_audience, 'Targeting'
    field :press_contact, 'string'
    field :price_range, 'string'
    field :produced_by, 'string'
    field :products, 'string'
    field :promotion_eligible, 'bool'
    field :promotion_ineligible_reason, 'string'
    field :public_transit, 'string'
    field :publisher_space, 'PublisherSpace'
    field :rating_count, 'int'
    field :recipient, 'string'
    field :record_label, 'string'
    field :release_date, 'string'
    field :restaurant_services, 'PageRestaurantServices'
    field :restaurant_specialties, 'PageRestaurantSpecialties'
    field :schedule, 'string'
    field :screenplay_by, 'string'
    field :season, 'string'
    field :single_line_address, 'string'
    field :starring, 'string'
    field :start_info, 'PageStartInfo'
    field :store_code, 'string'
    field :store_location_descriptor, 'string'
    field :store_number, 'int'
    field :studio, 'string'
    field :supports_instant_articles, 'bool'
    field :talking_about_count, 'int'
    field :unread_message_count, 'int'
    field :unread_notif_count, 'int'
    field :unseen_message_count, 'int'
    field :username, 'string'
    field :verification_status, 'string'
    field :voip_info, 'VoipInfo'
    field :website, 'string'
    field :were_here_count, 'int'
    field :whatsapp_number, 'string'
    field :written_by, 'string'
    field :ig_password, 'string'
    field :page_id, 'int'
    has_no_delete

    has_edge :admin_notes do |edge|
      edge.post 'PageAdminNote' do |api|
        api.has_param :body, 'string'
        api.has_param :user_id, 'int'
      end
    end

    has_edge :albums do |edge|
      edge.post 'Album' do |api|
        api.has_param :contributors, { list: 'int' }
        api.has_param :description, 'string'
        api.has_param :is_default, 'bool'
        api.has_param :location, 'string'
        api.has_param :make_shared_album, 'bool'
        api.has_param :message, 'string'
        api.has_param :name, 'string'
        api.has_param :place, 'object'
        api.has_param :privacy, 'object'
        api.has_param :tags, { list: 'int' }
        api.has_param :visible, 'string'
      end
    end

    has_edge :assigned_users do |edge|
      edge.delete do |api|
        api.has_param :user, 'int'
      end
      edge.get 'AssignedUser' do |api|
        api.has_param :business, 'string'
      end
      edge.post 'Page' do |api|
        api.has_param :tasks, { list: { enum: -> { Page::TASKS }} }
        api.has_param :user, 'int'
      end
    end

    has_edge :audio_copyrights do |edge|
      edge.get 'AudioCopyright'
    end

    has_edge :audio_media_copyrights do |edge|
      edge.get 'AudioCopyright'
    end

    has_edge :blocked do |edge|
      edge.delete do |api|
        api.has_param :asid, 'int'
        api.has_param :uid, 'int'
        api.has_param :user, 'int'
      end
      edge.get 'Profile' do |api|
        api.has_param :uid, 'int'
        api.has_param :user, 'int'
      end
      edge.post do |api|
        api.has_param :asid, 'object'
        api.has_param :uid, { list: 'string' }
        api.has_param :user, { list: 'string' }
      end
    end

    has_edge :business_activities do |edge|
      edge.get 'BusinessActivityLogEvent' do |api|
        api.has_param :business, 'string'
      end
    end

    has_edge :call_to_actions do |edge|
      edge.post 'PageCallToAction' do |api|
        api.has_param :android_app_id, 'int'
        api.has_param :android_deeplink, 'string'
        api.has_param :android_destination_type, { enum: -> { PageCallToAction::ANDROID_DESTINATION_TYPE }}
        api.has_param :android_package_name, 'string'
        api.has_param :android_url, 'string'
        api.has_param :email_address, 'string'
        api.has_param :intl_number_with_plus, 'string'
        api.has_param :iphone_app_id, 'int'
        api.has_param :iphone_deeplink, 'string'
        api.has_param :iphone_destination_type, { enum: -> { PageCallToAction::IPHONE_DESTINATION_TYPE }}
        api.has_param :iphone_url, 'string'
        api.has_param :type, { enum: -> { PageCallToAction::TYPE }}
        api.has_param :web_destination_type, { enum: -> { PageCallToAction::WEB_DESTINATION_TYPE }}
        api.has_param :web_url, 'string'
      end
    end

    has_edge :canvas_elements do |edge|
      edge.post 'CanvasBodyElement' do |api|
        api.has_param :canvas_button, 'object'
        api.has_param :canvas_carousel, 'object'
        api.has_param :canvas_footer, 'object'
        api.has_param :canvas_header, 'object'
        api.has_param :canvas_photo, 'object'
        api.has_param :canvas_product_list, 'object'
        api.has_param :canvas_product_set, 'object'
        api.has_param :canvas_store_locator, 'object'
        api.has_param :canvas_text, 'object'
        api.has_param :canvas_video, 'object'
      end
    end

    has_edge :canvases do |edge|
      edge.get 'Canvas' do |api|
        api.has_param :is_published, 'bool'
      end
      edge.post 'Canvas' do |api|
        api.has_param :background_color, 'string'
        api.has_param :body_element_ids, { list: 'string' }
        api.has_param :is_hidden, 'bool'
        api.has_param :is_published, 'bool'
        api.has_param :name, 'string'
      end
    end

    has_edge :change_proposals do |edge|
      edge.get 'PageChangeProposal'
    end

    has_edge :claimed_urls do |edge|
      edge.delete do |api|
        api.has_param :url, 'string'
      end
      edge.post 'Url' do |api|
        api.has_param :url, 'string'
      end
    end

    has_edge :conversations do |edge|
      edge.get 'UnifiedThread' do |api|
        api.has_param :folder, 'string'
        api.has_param :tags, { list: 'string' }
      end
    end

    has_edge :copyright_manual_claims do |edge|
      edge.post do |api|
        api.has_param :action, { enum: %w{MANUAL_REVIEW MONITOR BLOCK CLAIM_AD_EARNINGS REQUEST_TAKEDOWN }}
        api.has_param :countries, 'object'
        api.has_param :match_content_type, { enum: %w{VIDEO_AND_AUDIO VIDEO_ONLY AUDIO_ONLY }}
        api.has_param :matched_asset_id, 'string'
        api.has_param :reference_asset_id, 'string'
      end
    end

    has_edge :events do |edge|
      edge.get 'Event' do |api|
        api.has_param :event_state_filter, { list: { enum: -> { Event::EVENT_STATE_FILTER }} }
        api.has_param :include_canceled, 'bool'
        api.has_param :time_filter, { enum: -> { Event::TIME_FILTER }}
        api.has_param :type, { enum: -> { Event::TYPE }}
      end
    end

    has_edge :feed do |edge|
      edge.get 'PagePost' do |api|
        api.has_param :include_hidden, 'bool'
        api.has_param :show_expired, 'bool'
        api.has_param :with, { enum: -> { PagePost::WITH }}
      end
      edge.post 'PagePost' do |api|
        api.has_param :actions, 'object'
        api.has_param :adaptive_type, 'string'
        api.has_param :album_id, 'string'
        api.has_param :android_key_hash, 'string'
        api.has_param :animated_effect_id, 'int'
        api.has_param :application_id, 'string'
        api.has_param :asked_fun_fact_prompt_id, 'int'
        api.has_param :asset3d_id, 'int'
        api.has_param :associated_id, 'string'
        api.has_param :attach_place_suggestion, 'bool'
        api.has_param :attached_media, { list: 'object' }
        api.has_param :audience_exp, 'bool'
        api.has_param :backdated_time, 'datetime'
        api.has_param :backdated_time_granularity, { enum: -> { PagePost::BACKDATED_TIME_GRANULARITY }}
        api.has_param :call_to_action, 'object'
        api.has_param :caption, 'string'
        api.has_param :checkin_entry_point, { enum: -> { PagePost::CHECKIN_ENTRY_POINT }}
        api.has_param :child_attachments, { list: 'object' }
        api.has_param :client_mutation_id, 'string'
        api.has_param :composer_entry_picker, 'string'
        api.has_param :composer_entry_point, 'string'
        api.has_param :composer_entry_time, 'int'
        api.has_param :composer_session_events_log, 'string'
        api.has_param :composer_session_id, 'string'
        api.has_param :composer_source_surface, 'string'
        api.has_param :composer_type, 'string'
        api.has_param :connection_class, 'string'
        api.has_param :content_attachment, 'string'
        api.has_param :coordinates, 'object'
        api.has_param :cta_link, 'string'
        api.has_param :cta_type, 'string'
        api.has_param :description, 'string'
        api.has_param :direct_share_status, 'int'
        api.has_param :enforce_link_ownership, 'bool'
        api.has_param :expanded_height, 'int'
        api.has_param :expanded_width, 'int'
        api.has_param :feed_targeting, 'object'
        api.has_param :formatting, { enum: -> { PagePost::FORMATTING }}
        api.has_param :fun_fact_prompt_id, 'string'
        api.has_param :fun_fact_toastee_id, 'int'
        api.has_param :has_nickname, 'bool'
        api.has_param :height, 'int'
        api.has_param :holiday_card, 'string'
        api.has_param :home_checkin_city_id, 'object'
        api.has_param :image_crops, 'hash'
        api.has_param :implicit_with_tags, { list: 'int' }
        api.has_param :instant_game_entry_point_data, 'string'
        api.has_param :ios_bundle_id, 'string'
        api.has_param :is_backout_draft, 'bool'
        api.has_param :is_boost_intended, 'bool'
        api.has_param :is_explicit_location, 'bool'
        api.has_param :is_explicit_share, 'bool'
        api.has_param :is_group_linking_post, 'bool'
        api.has_param :is_photo_container, 'bool'
        api.has_param :link, 'string'
        api.has_param :location_source_id, 'string'
        api.has_param :manual_privacy, 'bool'
        api.has_param :message, 'string'
        api.has_param :multi_share_end_card, 'bool'
        api.has_param :multi_share_optimized, 'bool'
        api.has_param :name, 'string'
        api.has_param :nectar_module, 'string'
        api.has_param :object_attachment, 'string'
        api.has_param :offer_like_post_id, 'string'
        api.has_param :og_action_type_id, 'string'
        api.has_param :og_hide_object_attachment, 'bool'
        api.has_param :og_icon_id, 'string'
        api.has_param :og_object_id, 'string'
        api.has_param :og_phrase, 'string'
        api.has_param :og_set_profile_badge, 'bool'
        api.has_param :og_suggestion_mechanism, 'string'
        api.has_param :page_recommendation, 'string'
        api.has_param :picture, 'string'
        api.has_param :place, 'object'
        api.has_param :place_attachment_setting, { enum: -> { PagePost::PLACE_ATTACHMENT_SETTING }}
        api.has_param :place_list, 'string'
        api.has_param :place_list_data, 'object'
        api.has_param :post_surfaces_blacklist, { list: { enum: -> { PagePost::POST_SURFACES_BLACKLIST }} }
        api.has_param :posting_to_redspace, { enum: -> { PagePost::POSTING_TO_REDSPACE }}
        api.has_param :privacy, 'object'
        api.has_param :prompt_id, 'string'
        api.has_param :prompt_tracking_string, 'string'
        api.has_param :properties, 'object'
        api.has_param :proxied_app_id, 'string'
        api.has_param :publish_event_id, 'int'
        api.has_param :published, 'bool'
        api.has_param :quote, 'string'
        api.has_param :react_mode_metadata, 'string'
        api.has_param :ref, { list: 'string' }
        api.has_param :referenceable_image_ids, { list: 'string' }
        api.has_param :sales_promo_id, 'int'
        api.has_param :scheduled_publish_time, 'datetime'
        api.has_param :source, 'string'
        api.has_param :sponsor_id, 'string'
        api.has_param :sponsor_relationship, 'int'
        api.has_param :suggested_place_id, 'object'
        api.has_param :tags, { list: 'int' }
        api.has_param :target_surface, { enum: -> { PagePost::TARGET_SURFACE }}
        api.has_param :targeting, 'object'
        api.has_param :text_format_metadata, 'string'
        api.has_param :text_format_preset_id, 'string'
        api.has_param :text_only_place, 'string'
        api.has_param :throwback_camera_roll_media, 'string'
        api.has_param :thumbnail, 'file'
        api.has_param :time_since_original_post, 'int'
        api.has_param :title, 'string'
        api.has_param :tracking_info, 'string'
        api.has_param :unpublished_content_type, { enum: -> { PagePost::UNPUBLISHED_CONTENT_TYPE }}
        api.has_param :user_selected_tags, 'bool'
        api.has_param :video_start_time_ms, 'int'
        api.has_param :viewer_coordinates, 'object'
        api.has_param :width, 'int'
      end
    end

    has_edge :insights do |edge|
      edge.get 'InsightsResult' do |api|
        api.has_param :date_preset, { enum: -> { InsightsResult::DATE_PRESET }}
        api.has_param :metric, { list: 'object' }
        api.has_param :period, { enum: -> { InsightsResult::PERIOD }}
        api.has_param :show_description_from_api_doc, 'bool'
        api.has_param :since, 'datetime'
        api.has_param :until, 'datetime'
      end
    end

    has_edge :insights_exports do |edge|
      edge.get 'PageInsightsAsyncExportRun' do |api|
        api.has_param :data_level, { list: 'string' }
        api.has_param :from_creation_date, 'datetime'
      end
    end

    has_edge :instant_articles do |edge|
      edge.get 'InstantArticle' do |api|
        api.has_param :development_mode, 'bool'
      end
      edge.post 'InstantArticle' do |api|
        api.has_param :development_mode, 'bool'
        api.has_param :html_source, 'string'
        api.has_param :published, 'bool'
        api.has_param :take_live, 'bool'
      end
    end

    has_edge :instant_articles_insights do |edge|
      edge.get 'InstantArticleInsightsQueryResult' do |api|
        api.has_param :breakdown, { enum: -> { InstantArticleInsightsQueryResult::BREAKDOWN }}
        api.has_param :metric, { list: 'object' }
        api.has_param :period, { enum: -> { InstantArticleInsightsQueryResult::PERIOD }}
        api.has_param :since, 'datetime'
        api.has_param :until, 'datetime'
      end
    end

    has_edge :instant_articles_publish do |edge|
      edge.post do |api|
        api.has_param :canonical_url, 'string'
        api.has_param :publish_status, { enum: %w{DRAFT LIVE }}
      end
    end

    has_edge :labels do |edge|
      edge.post 'PageLabel' do |api|
        api.has_param :name, 'string'
      end
    end

    has_edge :leadgen_conditional_questions_group do |edge|
      edge.post do |api|
        api.has_param :conditional_questions_group_csv, 'file'
      end
    end

    has_edge :leadgen_context_cards do |edge|
      edge.post do |api|
        api.has_param :button_text, 'string'
        api.has_param :content, { list: 'string' }
        api.has_param :cover_photo, 'file'
        api.has_param :cover_photo_id, 'string'
        api.has_param :status, { enum: %w{ACTIVE ARCHIVED DELETED DRAFT }}
        api.has_param :style, { enum: %w{LIST_STYLE PARAGRAPH_STYLE }}
        api.has_param :title, 'string'
      end
    end

    has_edge :leadgen_draft_forms do |edge|
      edge.post 'Page' do |api|
        api.has_param :allow_organic_lead_retrieval, 'bool'
        api.has_param :block_display_for_non_targeted_viewer, 'bool'
        api.has_param :context_card, 'object'
        api.has_param :context_card_id, 'string'
        api.has_param :custom_disclaimer, 'object'
        api.has_param :follow_up_action_url, 'string'
        api.has_param :is_optimized_for_quality, 'bool'
        api.has_param :legal_content_id, 'string'
        api.has_param :locale, { enum: -> { Page::LOCALE }}
        api.has_param :name, 'string'
        api.has_param :privacy_policy, 'hash'
        api.has_param :question_page_custom_headline, 'string'
        api.has_param :questions, { list: 'object' }
        api.has_param :thank_you_page, 'hash'
        api.has_param :tracking_parameters, 'object'
      end
    end

    has_edge :leadgen_forms do |edge|
      edge.post 'Page' do |api|
        api.has_param :allow_organic_lead_retrieval, 'bool'
        api.has_param :block_display_for_non_targeted_viewer, 'bool'
        api.has_param :context_card, 'object'
        api.has_param :context_card_id, 'object'
        api.has_param :cover_photo, 'file'
        api.has_param :custom_disclaimer, 'object'
        api.has_param :follow_up_action_url, 'object'
        api.has_param :is_optimized_for_quality, 'bool'
        api.has_param :legal_content_id, 'object'
        api.has_param :locale, { enum: -> { Page::LOCALE }}
        api.has_param :name, 'string'
        api.has_param :privacy_policy, 'object'
        api.has_param :question_page_custom_headline, 'string'
        api.has_param :questions, { list: 'object' }
        api.has_param :thank_you_page, 'object'
        api.has_param :thank_you_page_id, 'object'
      end
    end

    has_edge :leadgen_legal_content do |edge|
      edge.post do |api|
        api.has_param :custom_disclaimer, 'object'
        api.has_param :privacy_policy, 'object'
        api.has_param :status, { enum: %w{ACTIVE ARCHIVED DELETED DRAFT }}
      end
    end

    has_edge :leadgen_whitelisted_users do |edge|
      edge.delete do |api|
        api.has_param :user_id, 'string'
      end
      edge.post 'User' do |api|
        api.has_param :user_id, 'int'
      end
    end

    has_edge :likes do |edge|
      edge.get 'Page' do |api|
        api.has_param :target_id, 'string'
      end
    end

    has_edge :live_encoders do |edge|
      edge.post do |api|
        api.has_param :brand, 'string'
        api.has_param :device_id, 'string'
        api.has_param :model, 'string'
        api.has_param :name, 'string'
        api.has_param :version, 'string'
      end
    end

    has_edge :live_videos do |edge|
      edge.get 'LiveVideo' do |api|
        api.has_param :broadcast_status, { list: { enum: -> { LiveVideo::BROADCAST_STATUS }} }
        api.has_param :source, { enum: -> { LiveVideo::SOURCE }}
      end
      edge.post 'LiveVideo' do |api|
        api.has_param :attribution_app_id, 'string'
        api.has_param :content_tags, { list: 'string' }
        api.has_param :crossposting_actions, { list: 'hash' }
        api.has_param :custom_labels, { list: 'string' }
        api.has_param :description, 'string'
        api.has_param :encoding_settings, 'string'
        api.has_param :fisheye_video_cropped, 'bool'
        api.has_param :front_z_rotation, 'double'
        api.has_param :game_show, 'hash'
        api.has_param :is_spherical, 'bool'
        api.has_param :live_encoders, { list: 'string' }
        api.has_param :original_fov, 'int'
        api.has_param :planned_start_time, 'int'
        api.has_param :privacy, 'object'
        api.has_param :product_items, { list: 'string' }
        api.has_param :projection, { enum: -> { LiveVideo::PROJECTION }}
        api.has_param :published, 'bool'
        api.has_param :save_vod, 'bool'
        api.has_param :schedule_custom_profile_image, 'file'
        api.has_param :spatial_audio_format, { enum: -> { LiveVideo::SPATIAL_AUDIO_FORMAT }}
        api.has_param :status, { enum: -> { LiveVideo::STATUS }}
        api.has_param :stereoscopic_mode, { enum: -> { LiveVideo::STEREOSCOPIC_MODE }}
        api.has_param :stop_on_delete_stream, 'bool'
        api.has_param :stream_type, { enum: -> { LiveVideo::STREAM_TYPE }}
        api.has_param :targeting, 'object'
        api.has_param :title, 'string'
      end
    end

    has_edge :locations do |edge|
      edge.delete do |api|
        api.has_param :location_page_id, 'object'
        api.has_param :store_number, 'int'
      end
      edge.get 'Page'
      edge.post 'Location' do |api|
        api.has_param :always_open, 'bool'
        api.has_param :hours, 'hash'
        api.has_param :ignore_warnings, 'bool'
        api.has_param :location, 'object'
        api.has_param :location_page_id, 'object'
        api.has_param :old_store_number, 'int'
        api.has_param :page_username, 'string'
        api.has_param :permanently_closed, 'bool'
        api.has_param :phone, 'string'
        api.has_param :place_topics, { list: 'string' }
        api.has_param :price_range, 'string'
        api.has_param :store_code, 'string'
        api.has_param :store_location_descriptor, 'string'
        api.has_param :store_name, 'string'
        api.has_param :store_number, 'int'
        api.has_param :website, 'object'
      end
    end

    has_edge :media_fingerprints do |edge|
      edge.post 'MediaFingerprint' do |api|
        api.has_param :fingerprint_content_type, { enum: -> { MediaFingerprint::FINGERPRINT_CONTENT_TYPE }}
        api.has_param :metadata, 'object'
        api.has_param :source, 'string'
        api.has_param :title, 'string'
        api.has_param :universal_content_id, 'string'
      end
    end

    has_edge :message_attachments do |edge|
      edge.post do |api|
        api.has_param :message, 'object'
      end
    end

    has_edge :messages do |edge|
      edge.post do |api|
        api.has_param :message, 'object'
        api.has_param :messaging_type, { enum: %w{RESPONSE UPDATE MESSAGE_TAG }}
        api.has_param :notification_type, { enum: %w{REGULAR SILENT_PUSH NO_PUSH }}
        api.has_param :persona_id, 'object'
        api.has_param :recipient, 'object'
        api.has_param :sender_action, { enum: %w{MARK_SEEN TYPING_ON TYPING_OFF }}
        api.has_param :tag, 'object'
      end
    end

    has_edge :messaging_feature_review do |edge|
      edge.get 'MessagingFeatureReview'
    end

    has_edge :messenger_codes do |edge|
      edge.post do |api|
        api.has_param :data, 'string'
        api.has_param :image_size, 'int'
        api.has_param :type, { enum: %w{STANDARD REF }}
      end
    end

    has_edge :messenger_profile do |edge|
      edge.delete do |api|
        api.has_param :fields, { list: { enum: -> { MessengerProfile::FIELDS }} }
      end
      edge.post 'MessengerProfile' do |api|
        api.has_param :account_linking_url, 'string'
        api.has_param :get_started, 'object'
        api.has_param :greeting, { list: 'object' }
        api.has_param :home_url, 'object'
        api.has_param :payment_settings, 'object'
        api.has_param :persistent_menu, { list: 'object' }
        api.has_param :target_audience, 'object'
        api.has_param :whitelisted_domains, { list: 'string' }
      end
    end

    has_edge :milestones do |edge|
      edge.post 'LifeEvent' do |api|
        api.has_param :description, 'string'
        api.has_param :start_time, 'datetime'
        api.has_param :title, 'string'
      end
    end

    has_edge :nativeoffers do |edge|
      edge.get 'NativeOffer'
      edge.post 'NativeOffer' do |api|
        api.has_param :barcode_type, { enum: -> { NativeOffer::BARCODE_TYPE }}
        api.has_param :barcode_value, 'string'
        api.has_param :details, 'string'
        api.has_param :disable_location, 'bool'
        api.has_param :discounts, { list: 'object' }
        api.has_param :expiration_time, 'datetime'
        api.has_param :instore_code, 'string'
        api.has_param :location_type, { enum: -> { NativeOffer::LOCATION_TYPE }}
        api.has_param :max_save_count, 'int'
        api.has_param :online_code, 'string'
        api.has_param :page_set_id, 'string'
        api.has_param :redemption_link, 'string'
        api.has_param :terms, 'string'
      end
    end

    has_edge :nlp_configs do |edge|
      edge.post do |api|
        api.has_param :custom_token, 'string'
        api.has_param :model, { enum: %w{ARABIC CHINESE CROATIAN CUSTOM DANISH DUTCH ENGLISH FRENCH_STANDARD GERMAN_STANDARD GREEK HEBREW HUNGARIAN IRISH ITALIAN_STANDARD KOREAN NORWEGIAN_BOKMAL POLISH PORTUGUESE ROMANIAN SPANISH SWEDISH VIETNAMESE }}
        api.has_param :n_best, 'int'
        api.has_param :nlp_enabled, 'bool'
        api.has_param :verbose, 'bool'
      end
    end

    has_edge :page_backed_instagram_accounts do |edge|
      edge.post
    end

    has_edge :pass_thread_control do |edge|
      edge.post do |api|
        api.has_param :metadata, 'string'
        api.has_param :recipient, 'object'
        api.has_param :target_app_id, 'int'
      end
    end

    has_edge :photos do |edge|
      edge.get 'Photo' do |api|
        api.has_param :biz_tag_id, 'int'
        api.has_param :business_id, 'string'
        api.has_param :type, { enum: -> { Photo::TYPE }}
      end
      edge.post 'Photo' do |api|
        api.has_param :aid, 'string'
        api.has_param :allow_spherical_photo, 'bool'
        api.has_param :application_id, 'string'
        api.has_param :attempt, 'int'
        api.has_param :audience_exp, 'bool'
        api.has_param :backdated_time, 'datetime'
        api.has_param :backdated_time_granularity, { enum: -> { Photo::BACKDATED_TIME_GRANULARITY }}
        api.has_param :caption, 'string'
        api.has_param :composer_session_id, 'string'
        api.has_param :direct_share_status, 'int'
        api.has_param :feed_targeting, 'object'
        api.has_param :filter_type, 'int'
        api.has_param :full_res_is_coming_later, 'bool'
        api.has_param :initial_view_heading_override_degrees, 'int'
        api.has_param :initial_view_pitch_override_degrees, 'int'
        api.has_param :initial_view_vertical_fov_override_degrees, 'int'
        api.has_param :is_explicit_location, 'bool'
        api.has_param :is_explicit_place, 'bool'
        api.has_param :location_source_id, 'string'
        api.has_param :manual_privacy, 'bool'
        api.has_param :message, 'string'
        api.has_param :name, 'string'
        api.has_param :nectar_module, 'string'
        api.has_param :no_story, 'bool'
        api.has_param :offline_id, 'int'
        api.has_param :og_action_type_id, 'string'
        api.has_param :og_icon_id, 'string'
        api.has_param :og_object_id, 'string'
        api.has_param :og_phrase, 'string'
        api.has_param :og_set_profile_badge, 'bool'
        api.has_param :og_suggestion_mechanism, 'string'
        api.has_param :place, 'object'
        api.has_param :privacy, 'object'
        api.has_param :profile_id, 'int'
        api.has_param :published, 'bool'
        api.has_param :qn, 'string'
        api.has_param :scheduled_publish_time, 'int'
        api.has_param :spherical_metadata, 'hash'
        api.has_param :sponsor_id, 'string'
        api.has_param :sponsor_relationship, 'int'
        api.has_param :tags, { list: 'object' }
        api.has_param :target_id, 'int'
        api.has_param :targeting, 'object'
        api.has_param :temporary, 'bool'
        api.has_param :unpublished_content_type, { enum: -> { Photo::UNPUBLISHED_CONTENT_TYPE }}
        api.has_param :url, 'string'
        api.has_param :vault_image_id, 'string'
      end
    end

    has_edge :picture do |edge|
      edge.get 'ProfilePictureSource' do |api|
        api.has_param :height, 'int'
        api.has_param :redirect, 'bool'
        api.has_param :type, { enum: -> { ProfilePictureSource::TYPE }}
        api.has_param :width, 'int'
      end
      edge.post 'ProfilePictureSource' do |api|
        api.has_param :android_key_hash, 'string'
        api.has_param :caption, 'string'
        api.has_param :composer_session_id, 'string'
        api.has_param :has_umg, 'bool'
        api.has_param :height, 'int'
        api.has_param :ios_bundle_id, 'string'
        api.has_param :media_effect_ids, { list: 'int' }
        api.has_param :media_effect_source_object_id, 'int'
        api.has_param :msqrd_mask_id, 'string'
        api.has_param :photo, 'string'
        api.has_param :picture, 'string'
        api.has_param :profile_pic_method, 'string'
        api.has_param :profile_pic_source, 'string'
        api.has_param :proxied_app_id, 'int'
        api.has_param :qn, 'string'
        api.has_param :reuse, 'bool'
        api.has_param :scaled_crop_rect, 'object'
        api.has_param :set_profile_photo_shield, 'string'
        api.has_param :sticker_id, 'int'
        api.has_param :sticker_source_object_id, 'int'
        api.has_param :width, 'int'
        api.has_param :x, 'int'
        api.has_param :y, 'int'
      end
    end

    has_edge :place_topics do |edge|
      edge.get 'PlaceTopic'
    end

    has_edge :posts do |edge|
      edge.get 'PagePost' do |api|
        api.has_param :include_hidden, 'bool'
        api.has_param :q, 'string'
        api.has_param :show_expired, 'bool'
        api.has_param :with, { enum: -> { PagePost::WITH }}
      end
    end

    has_edge :product_catalogs do |edge|
      edge.get 'ProductCatalog'
    end

    has_edge :promotable_posts do |edge|
      edge.get 'PagePost' do |api|
        api.has_param :include_hidden, 'bool'
        api.has_param :include_inline, 'bool'
        api.has_param :is_published, 'bool'
        api.has_param :q, 'string'
        api.has_param :show_expired, 'bool'
        api.has_param :with, { enum: -> { PagePost::WITH }}
      end
    end

    has_edge :published_posts do |edge|
      edge.get 'PagePost' do |api|
        api.has_param :since, 'object'
        api.has_param :until, 'object'
      end
    end

    has_edge :request_thread_control do |edge|
      edge.post do |api|
        api.has_param :metadata, 'string'
        api.has_param :recipient, 'object'
      end
    end

    has_edge :roles do |edge|
      edge.get 'User' do |api|
        api.has_param :uid, 'int'
      end
    end

    has_edge :saved_filters do |edge|
      edge.get 'PageSavedFilter' do |api|
        api.has_param :section, { enum: -> { PageSavedFilter::SECTION }}
      end
    end

    has_edge :saved_message_responses do |edge|
      edge.post 'SavedMessageResponse' do |api|
        api.has_param :category, { enum: -> { SavedMessageResponse::CATEGORY }}
        api.has_param :image, 'string'
        api.has_param :is_enabled, 'bool'
        api.has_param :message, 'string'
        api.has_param :title, 'string'
      end
    end

    has_edge :scheduled_posts do |edge|
      edge.get 'PagePost'
    end

    has_edge :settings do |edge|
      edge.post do |api|
        api.has_param :option, 'object'
      end
    end

    has_edge :subscribed_apps do |edge|
      edge.delete
      edge.post
    end

    has_edge :tabs do |edge|
      edge.delete do |api|
        api.has_param :tab, 'string'
      end
      edge.get 'Tab' do |api|
        api.has_param :tab, { list: 'string' }
      end
      edge.post 'Tab' do |api|
        api.has_param :app_id, 'int'
        api.has_param :custom_image_url, 'string'
        api.has_param :custom_name, 'string'
        api.has_param :is_non_connection_landing_tab, 'bool'
        api.has_param :position, 'int'
        api.has_param :tab, 'string'
      end
    end

    has_edge :tagged do |edge|
      edge.get 'PagePost'
    end

    has_edge :thread_settings do |edge|
      edge.post do |api|
        api.has_param :account_linking_url, 'string'
        api.has_param :call_to_actions, { list: 'object' }
        api.has_param :domain_action_type, { enum: %w{ADD REMOVE }}
        api.has_param :greeting, 'object'
        api.has_param :payment_dev_mode_action, { enum: %w{ADD REMOVE }}
        api.has_param :payment_privacy_url, 'string'
        api.has_param :payment_public_key, 'string'
        api.has_param :payment_testers, { list: 'string' }
        api.has_param :setting_type, { enum: %w{ACCOUNT_LINKING CALL_TO_ACTIONS GREETING DOMAIN_WHITELISTING PAYMENT }}
        api.has_param :thread_state, { enum: %w{NEW_THREAD EXISTING_THREAD }}
        api.has_param :whitelisted_domains, { list: 'string' }
      end
    end

    has_edge :threads do |edge|
      edge.get 'UnifiedThread' do |api|
        api.has_param :folder, 'string'
        api.has_param :tags, { list: 'string' }
      end
    end

    has_edge :upcoming_changes do |edge|
      edge.get 'PageUpcomingChange' do |api|
        api.has_param :include_inactive, 'bool'
      end
    end

    has_edge :video_copyright_rules do |edge|
      edge.get 'VideoCopyrightRule' do |api|
        api.has_param :selected_rule_id, 'string'
        api.has_param :source, { enum: -> { VideoCopyrightRule::SOURCE }}
      end
      edge.post 'VideoCopyrightRule' do |api|
        api.has_param :condition_groups, { list: 'object' }
        api.has_param :name, 'string'
      end
    end

    has_edge :video_copyrights do |edge|
      edge.get 'VideoCopyright' do |api|
        api.has_param :use_fallback, 'bool'
      end
      edge.post 'VideoCopyright' do |api|
        api.has_param :attribution_id, 'string'
        api.has_param :content_category, { enum: -> { VideoCopyright::CONTENT_CATEGORY }}
        api.has_param :copyright_content_id, 'string'
        api.has_param :excluded_ownership_countries, { list: 'string' }
        api.has_param :excluded_ownership_segments, { list: 'object' }
        api.has_param :fingerprint_id, 'string'
        api.has_param :is_reference_disabled, 'bool'
        api.has_param :is_reference_video, 'bool'
        api.has_param :monitoring_type, { enum: -> { VideoCopyright::MONITORING_TYPE }}
        api.has_param :ownership_countries, { list: 'string' }
        api.has_param :rule_id, 'string'
        api.has_param :whitelisted_ids, { list: 'string' }
        api.has_param :whitelisted_ig_user_ids, { list: 'string' }
      end
    end

    has_edge :video_lists do |edge|
      edge.delete do |api|
        api.has_param :video_list_id, 'string'
      end
      edge.post 'VideoList' do |api|
        api.has_param :description, 'string'
        api.has_param :title, 'string'
      end
    end

    has_edge :video_media_copyrights do |edge|
      edge.get 'VideoCopyright'
    end

    has_edge :videos do |edge|
      edge.get do |api|
        api.has_param :type, { enum: %w{tagged uploaded }}
      end
      edge.post do |api|
        api.has_param :ad_breaks, 'object'
        api.has_param :audio_story_wave_animation_handle, 'string'
        api.has_param :backdated_post, 'object'
        api.has_param :content_category, { enum: %w{BEAUTY_FASHION BUSINESS CARS_TRUCKS COMEDY CUTE_ANIMALS ENTERTAINMENT FAMILY FOOD_HEALTH HOME LIFESTYLE MUSIC NEWS POLITICS SCIENCE SPORTS TECHNOLOGY VIDEO_GAMING OTHER }}
        api.has_param :content_tags, { list: 'string' }
        api.has_param :crossposted_video_id, 'string'
        api.has_param :custom_labels, { list: 'string' }
        api.has_param :description, 'string'
        api.has_param :direct_share_status, 'int'
        api.has_param :embeddable, 'bool'
        api.has_param :end_offset, 'int'
        api.has_param :expiration, 'object'
        api.has_param :feed_targeting, 'object'
        api.has_param :file_size, 'int'
        api.has_param :file_url, 'string'
        api.has_param :fisheye_video_cropped, 'bool'
        api.has_param :fov, 'int'
        api.has_param :front_z_rotation, 'double'
        api.has_param :guide, { list: { list: 'int' } }
        api.has_param :guide_enabled, 'bool'
        api.has_param :initial_heading, 'int'
        api.has_param :initial_pitch, 'int'
        api.has_param :is_voice_clip, 'bool'
        api.has_param :no_story, 'bool'
        api.has_param :original_fov, 'int'
        api.has_param :original_projection_type, { enum: %w{equirectangular cubemap equiangular_cubemap half_equirectangular }}
        api.has_param :published, 'bool'
        api.has_param :react_mode_metadata, 'string'
        api.has_param :reference_only, 'bool'
        api.has_param :referenced_sticker_id, 'string'
        api.has_param :replace_video_id, 'string'
        api.has_param :scheduled_publish_time, 'int'
        api.has_param :secret, 'bool'
        api.has_param :slideshow_spec, 'hash'
        api.has_param :social_actions, 'bool'
        api.has_param :source, 'string'
        api.has_param :spherical, 'bool'
        api.has_param :sponsor_id, 'string'
        api.has_param :sponsor_relationship, 'int'
        api.has_param :start_offset, 'int'
        api.has_param :swap_mode, { enum: %w{replace }}
        api.has_param :targeting, 'object'
        api.has_param :thumb, 'file'
        api.has_param :title, 'string'
        api.has_param :universal_video_id, 'string'
        api.has_param :unpublished_content_type, { enum: %w{SCHEDULED DRAFT ADS_POST INLINE_CREATED PUBLISHED }}
        api.has_param :upload_phase, { enum: %w{start transfer finish cancel }}
        api.has_param :upload_session_id, 'string'
        api.has_param :video_file_chunk, 'string'
      end
    end

    has_edge :visitor_posts do |edge|
      edge.get 'PagePost' do |api|
        api.has_param :include_hidden, 'bool'
      end
    end

  end
end
