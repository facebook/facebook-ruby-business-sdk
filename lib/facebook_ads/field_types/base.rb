# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

module FacebookAds
  module FieldTypes
    class Base
      extend FieldTypes

      def deserialize(value, session = nil)
        value
      end

      def serialize(value)
        value
      end
    end
  end
end
