# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

module FacebookAds
  module FieldTypes
    class Enum < Base
      register :enum, 'enum'

      def initialize(vals)
        @values = (vals.is_a?(Proc) ? vals.call : vals )
      end

      # TODO Valid Value checking?
    end
  end
end
