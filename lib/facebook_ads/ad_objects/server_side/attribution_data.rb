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

      # AttributionData indicated the attribution data used for attribution passback event to optimize the performance.
      class AttributionData

        # Touchpoint type.
        attr_accessor :scope

        # A Unix timestamp in seconds indicating when the campaign_id or fbc was first received.
        attr_accessor :visit_time

        # Meta-provided ad id from URL/deeplink.
        attr_accessor :ad_id

        # Meta-provided adset id from URL/deeplink.
        attr_accessor :adset_id

        # Meta-provided campaign id from URL/deeplink.
        attr_accessor :campaign_id

        # [0-1] weight of credit assigned to the visit.
        attr_accessor :attribution_share

        # Attribution model used to attribute the event.
        attr_accessor :attribution_model

        # Attribution woindow in days.
        attr_accessor :attr_window



        # @param [String] scope
        # @param [Integer] visit_time
        # @param [String] ad_id
        # @param [String] adset_id
        # @param [String] campaign_id
        # @param [Float] attribution_share
        # @param [String] attribution_model
        # @param [String] attr_window
        def initialize(scope: nil, visit_time: nil, ad_id: nil, adset_id: nil, campaign_id: nil, attribution_share: nil, attribution_model: nil, attr_window: nil)
          unless scope.nil?
            self.scope = scope
          end
          unless visit_time.nil?
            self.visit_time = visit_time
          end
          unless ad_id.nil?
            self.ad_id = ad_id
          end
          unless adset_id.nil?
            self.adset_id = adset_id
          end
          unless campaign_id.nil?
            self.campaign_id = campaign_id
          end
          unless attribution_share.nil?
            self.attribution_share = attribution_share
          end
          unless attribution_model.nil?
            self.attribution_model = attribution_model
          end
          unless attr_window.nil?
            self.attr_window = attr_window
          end
        end

        # build the object using the input hash
        # @param [Hash] attributes  attributes in the form of hash
        def build(attributes = {})
          return unless attributes.is_a?(Hash)

          # convert string to symbol for hash key
          attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

          if attributes.has_key?(:'scope')
            self.scope = attributes[:'scope']
          end

          if attributes.has_key?(:'visit_time')
            self.visit_time = attributes[:'visit_time']
          end

          if attributes.has_key?(:'ad_id')
            self.ad_id = attributes[:'ad_id']
          end

          if attributes.has_key?(:'adset_id')
            self.adset_id = attributes[:'adset_id']
          end

          if attributes.has_key?(:'campaign_id')
            self.campaign_id = attributes[:'campaign_id']
          end

          if attributes.has_key?(:'attribution_share')
            self.attribution_share = attributes[:'attribution_share']
          end

          if attributes.has_key?(:'attribution_model')
            self.attribution_model = attributes[:'attribution_model']
          end

          if attributes.has_key?(:'attr_window')
            self.attr_window = attributes[:'attr_window']
          end
        end

        # Checks equality by comparing each attribute.
        def ==(o)
          return true if self.equal?(o)
          self.class == o.class &&
              scope == o.scope &&
              visit_time == o.visit_time &&
              ad_id == o.ad_id &&
              adset_id == o.adset_id &&
              campaign_id == o.campaign_id &&
              attribution_share == o.attribution_share &&
              attribution_model == o.attribution_model &&
              attr_window == o.attr_window
        end

        # @see the `==` method
        def eql?(o)
          self == o
        end

        # Calculates hash code according to all attributes.
        # @return [Fixnum] Hash code
        def hash
          [
            scope, visit_time, ad_id, adset_id, campaign_id, attribution_share, attribution_model, attr_window
          ].hash
        end

        def to_s
          hash = {}
          unless scope.nil?
            hash['scope'] = scope
          end
          unless visit_time.nil?
            hash['visit_time'] = visit_time
          end
          unless ad_id.nil?
            hash['ad_id'] = ad_id
          end
          unless adset_id.nil?
            hash['adset_id'] = adset_id
          end
          unless campaign_id.nil?
            hash['campaign_id'] = campaign_id
          end
          unless attribution_share.nil?
            hash['attribution_share'] = attribution_share
          end
          unless attribution_model.nil?
            hash['attribution_model'] = attribution_model
          end
          unless attr_window.nil?
            hash['attr_window'] = attr_window
          end
          hash.to_s
        end


        # Normalize input fields to server request format.
        def normalize
          hash = {}
          unless scope.nil?
            hash['scope'] = scope
          end
          unless visit_time.nil?
            hash['visit_time'] = visit_time
          end
          unless ad_id.nil?
            hash['ad_id'] = ad_id
          end
          unless adset_id.nil?
            hash['adset_id'] = adset_id
          end
          unless campaign_id.nil?
            hash['campaign_id'] = campaign_id
          end
          unless attribution_share.nil?
            hash['attribution_share'] = attribution_share
          end
          unless attribution_model.nil?
            hash['attribution_model'] = attribution_model
          end
          unless attr_window.nil?
            hash['attr_window'] = attr_window
          end
          hash
        end

      end
    end
  end
