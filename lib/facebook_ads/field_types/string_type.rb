# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

module FacebookAds
  module FieldTypes
    # StringType instead of String to avoid name clash with the String class
    class StringType < Base
      register 'string'

      def deserialize(value, session = nil)
        value.is_a?(Array) ? (value * ',') : value.to_s
      end

      def serialize(value)
        case value
          when Hash
            JSON.generate(value)
          else
            value.to_s
        end
      end
    end
  end
end
