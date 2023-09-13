# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

module FacebookAds
  module FieldTypes
    class Object < Base
      register 'hash', 'map', 'object'

      def deserialize(value, session = nil)
        value.is_a?(String) ? JSON.parse(value) : value
      end

      def serialize(value)
        # Only serialize if not primitive types. Otherwise json will add
        # Extra \" to the String/Int
        case value
          when String, Integer
            value
          else
            JSON.generate(value)
        end
      end
    end
  end
end
