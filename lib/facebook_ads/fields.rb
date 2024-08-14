# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

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
          if !@__all_fields.include?(name)
            @__all_fields << name
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
          @__all_fields.add(name.to_s)
        end
      end
    end
  end
end
