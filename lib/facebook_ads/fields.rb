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
          method_name = name == :object_id ? :fb_object_id : name
          define_reader(method_name, name)
          define_writer(method_name, name)
        end

        self.deserializer ||= ParamSet.new
        self.deserializer.has_param(name, type, *args)
      end

      private

      def define_reader(method_name, field_name)
        define_method(method_name) do
          if !@__all_fields.include?(field_name)
            @__all_fields << field_name
            Utils.logger.warn("#{field_name} not in the fields")
          end

          load! unless loaded?

          if changes.has_key?(field_name)
            changes[field_name]
          else
            @attributes[field_name]
          end
        end
      end

      def define_writer(method_name, field_name)
        define_method("#{method_name}=") do |val|
          changes[field_name] = val
          @__all_fields.add(field_name.to_s)
        end
      end
    end
  end
end
