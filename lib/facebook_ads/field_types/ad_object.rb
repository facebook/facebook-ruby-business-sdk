# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

module FacebookAds
  module FieldTypes
    class AdObject < Base
      register 'ad_object'

      def initialize(ad_object_class)
        @ad_object_class = ad_object_class
      end

      def deserialize(value, session = nil)
        @ad_object_class.new(value, value.keys, session)
      end

      def serialize(value)
        value.to_json
      end
    end
  end
end
