# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

require 'date'

module FacebookAds
  module FieldTypes
    class MyDateTime < Base
      register 'datetime'

      def deserialize(value, session = nil)
        case value
          when String
            ::DateTime.strptime(value, '%FT%T%:z')
          else
            ::Time.at(value).to_datetime
        end
      end

      def serialize(value)
        case value
          when ::DateTime, ::Time
            value.to_time.to_i
          when ::String
            ::DateTime.parse(value).to_time.to_i
          else
            value
        end
      end
    end
  end
end
