# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

module FacebookAds
  module FieldTypes
    class Integer < Base
      register 'int', 'integer'

      def deserialize(value, session = nil)
        value.is_a?(::Integer) ? value : value.to_s[/[0-9]+/].to_i
      end

      def serialize(value)
        value.to_s
      end
    end
  end
end
