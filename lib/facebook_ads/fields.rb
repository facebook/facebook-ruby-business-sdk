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
  module Fields
    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      attr_accessor :deserializer, :field_types

      def field(name, type, *args)
        self.field_types ||= {}
        self.field_types[name] = type

        unless name == :id
          define_reader(name)
          define_writer(name)
        end

        self.deserializer ||= ParamSet.new
        self.deserializer.has_param(name, type, *args)
      end

      def define_reader(name)
        define_method(name) do
          if !fields.include?(name)
            fields << name
            Utils.logger.warn("#{name} not in the fields")
          end

          load! unless loaded?

          if changes.has_key?(name)
            changes[name]
          else
            @attributes[name]
          end
        end
      end

      def define_writer(name)
        define_method("#{name}=") do |val|
          changes[name] = val
          @fields.add(name.to_s)
        end
      end
    end
  end
end
