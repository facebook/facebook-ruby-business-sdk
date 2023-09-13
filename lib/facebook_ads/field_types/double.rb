# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

module FacebookAds
  module FieldTypes
    class Double < Base
      register 'float', 'double'

      def deserialize(value, session = nil)
        value.is_a?(String) ? value[/[0-9.]+/].to_f : value
      end
    end
  end
end
