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
