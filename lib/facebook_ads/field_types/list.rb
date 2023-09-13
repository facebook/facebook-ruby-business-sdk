# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

module FacebookAds
  module FieldTypes
    class List < Base
      register :list, 'list'

      def initialize(sub_type)
        @sub_type = self.class.for(sub_type)
      end

      def deserialize(value, session = nil)
        case value
          when String
            JSON.parse(value).map { |v|
              @sub_type.deserialize(v, session)
            }
          when Array
            value.map { |v|
              @sub_type.deserialize(v, session)
            }
          when Hash
            # Special handle for images
            if value.length == 1 && value.keys.first == 'images'
              value = value['images']
            end

            value.map { |_,v|
              @sub_type.deserialize(v, session)
            }
          else
            [value]
        end
      end

      def serialize(value)
        JSON.generate(value)
      end
    end
  end
end
