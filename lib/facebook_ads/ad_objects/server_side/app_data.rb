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

module FacebookAds
    module ServerSide
      # AppData which contains app data and device information for events happening from an app.
      class AppData
        # Use this field to specify ATT permission on an iOS 14.5+ device. Set to 0 for disabled or 1 for enabled.
        attr_accessor :application_tracking_enabled

        # A person can choose to enable ad tracking on an app level. Your SDK should allow an app developer to put an opt-out setting into their app. Use this field to specify the person's choice. Use 0 for disabled, 1 for enabled. `
        attr_accessor :advertiser_tracking_enabled

        # Specifies that view through data should be considered when determining the ad to attribute this install to. Clicks will always be considered first before views and views will only be returned if there was not a click on an ad for the app
        attr_accessor :consider_views

        # Extended device information, such as screen width and height.
        attr_accessor :extinfo

        # Specifies that view dwell ms should be returned as part of view through data
        attr_accessor :include_dwell_data

        # Specifies that video view completion percentages should be returned as part of view through data
        attr_accessor :include_video_data

        # Third party install referrer, currently available for Android only, see here for more.
        attr_accessor :install_referrer

        # Used internally by the Android SDKs
        attr_accessor :installer_package

        # Used internally by the iOS and Android SDKs.
        attr_accessor :url_schemes

        # Attribution token used for Windows 10.
        attr_accessor :windows_attribution_id

        # @param [Boolean] application_tracking_enabled
        # @param [Boolean] advertiser_tracking_enabled
        # @param [Boolean] consider_views
        # @param [ExtendedDeviceInfo] extinfo
        # @param [Boolean] include_dwell_data
        # @param [Boolean] include_video_data
        # @param [String] install_referrer
        # @param [String] installer_package
        # @param [Array<String>] url_schemes
        # @param [String] windows_attribution_id
        def initialize(application_tracking_enabled: nil,
          advertiser_tracking_enabled: nil,
          consider_views: nil,
          extinfo: nil,
          include_dwell_data: nil,
          include_video_data: nil,
          install_referrer: nil,
          installer_package: nil,
          url_schemes: nil,
          windows_attribution_id: nil)

          unless application_tracking_enabled.nil?
            self.application_tracking_enabled = application_tracking_enabled
          end
          unless advertiser_tracking_enabled.nil?
            self.advertiser_tracking_enabled = advertiser_tracking_enabled
          end
          unless consider_views.nil?
            self.consider_views = consider_views
          end
          unless extinfo.nil?
            self.extinfo = extinfo
          end
          unless include_dwell_data.nil?
            self.include_dwell_data = include_dwell_data
          end
          unless include_video_data.nil?
            self.include_video_data = include_video_data
          end
          unless install_referrer.nil?
            self.install_referrer = install_referrer
          end
          unless installer_package.nil?
            self.installer_package = installer_package
          end
          unless url_schemes.nil?
            self.url_schemes = url_schemes
          end
          unless windows_attribution_id.nil?
            self.windows_attribution_id = windows_attribution_id
          end
        end

        # build the object using the input hash
        # @param [Hash] attributes  attributes in the form of hash
        def build(attributes = {})
          return unless attributes.is_a?(Hash)

          # convert string to symbol for hash key
          attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

          if attributes.has_key?(:'application_tracking_enabled')
            self.application_tracking_enabled = attributes[:'application_tracking_enabled']
          end

          if attributes.has_key?(:'advertiser_tracking_enabled')
            self.advertiser_tracking_enabled = attributes[:'advertiser_tracking_enabled']
          end

          if attributes.has_key?(:'consider_views')
            self.consider_views = attributes[:'consider_views']
          end

          if attributes.has_key?(:'extinfo')
            self.extinfo = attributes[:'extinfo']
          end

          if attributes.has_key?(:'include_dwell_data')
            self.include_dwell_data = attributes[:'include_dwell_data']
          end


          if attributes.has_key?(:'include_video_data')
            self.include_video_data = attributes[:'include_video_data']
          end

          if attributes.has_key?(:'install_referrer')
            self.install_referrer = attributes[:'install_referrer']
          end

          if attributes.has_key?(:'installer_package')
            self.installer_package = attributes[:'installer_package']
          end

          if attributes.has_key?(:'url_schemes')
            self.url_schemes = attributes[:'url_schemes']
          end

          if attributes.has_key?(:'windows_attribution_id')
            self.windows_attribution_id = attributes[:'windows_attribution_id']
          end
        end

      # Checks equality by comparing each attribute.
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            application_tracking_enabled == o.application_tracking_enabled &&
            advertiser_tracking_enabled == o.advertiser_tracking_enabled &&
            consider_views == o.consider_views &&
            extinfo == o.extinfo &&
            include_dwell_data == o.include_dwell_data &&
            include_video_data == o.include_video_data &&
            install_referrer == o.install_referrer &&
            installer_package == o.installer_package &&
            url_schemes == o.url_schemes &&
            windows_attribution_id == o.windows_attribution_id
      end

      # @see the `==` method
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Fixnum] Hash code
      def hash
        [
            application_tracking_enabled,
            advertiser_tracking_enabled,
            consider_views,
            extinfo,
            include_dwell_data,
            include_video_data,
            install_referrer,
            installer_package,
            url_schemes,
            windows_attribution_id
        ].hash
      end

      # Returns the string representation of the object
      # @return [String] String presentation of the object
      def to_s
        hash = {}
        unless vapplication_tracking_enabledalue.nil?
          hash['application_tracking_enabled'] = application_tracking_enabled
        end
        unless advertiser_tracking_enabled.nil?
          hash['advertiser_tracking_enabled'] = advertiser_tracking_enabled
        end
        unless consider_views.nil?
          hash['consider_views'] = consider_views
        end
        unless extinfo.nil?
          hash['extinfo'] = extinfo.to_s
        end
        unless include_dwell_data.nil?
          hash['include_dwell_data'] = include_dwell_data
        end
        unless include_video_data.nil?
          hash['include_video_data'] = include_video_data
        end
        unless install_referrer.nil?
          hash['install_referrer'] = install_referrer
        end
        unless installer_package.nil?
          hash['installer_package'] = installer_package
        end
        unless url_schemes.nil?
          hash['url_schemes'] = url_schemes.to_s
        end
        unless windows_attribution_id.nil?
          hash['windows_attribution_id'] = windows_attribution_id
        end
        hash.to_s
      end

      # Normalize input fields to server request format.
      def normalize
        hash = {}
        unless application_tracking_enabled.nil?
          hash['application_tracking_enabled'] = application_tracking_enabled
        end
        unless advertiser_tracking_enabled.nil?
          hash['advertiser_tracking_enabled'] = advertiser_tracking_enabled
        end
        unless consider_views.nil?
          hash['consider_views'] = consider_views
        end
        unless include_dwell_data.nil?
          hash['include_dwell_data'] = include_dwell_data
        end
        unless include_video_data.nil?
          hash['include_video_data'] = include_video_data
        end
        unless install_referrer.nil?
          hash['install_referrer'] = install_referrer
        end
        unless installer_package.nil?
          hash['installer_package'] = installer_package
        end
        unless url_schemes.nil?
          hash['url_schemes'] = url_schemes
        end
        unless windows_attribution_id.nil?
          hash['windows_attribution_id'] = windows_attribution_id
        end

        unless extinfo.nil?
          hash['extinfo'] = extinfo.normalize
        end
        hash
      end
      end
    end
end
