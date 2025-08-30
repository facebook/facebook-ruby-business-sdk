# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

require 'facebook_ads/field_types/base'

module FacebookAds
  module FieldTypes
    def register(*type_names)
      @@registry ||= {}
      type_names.each do |type_name|
        @@registry[type_name] = self
      end
    end

    def lookup(type_name)
      @@registry && @@registry[type_name]
    end

    def for(type_spec)
      if type_spec.is_a?(Hash)
        type_key = type_spec.keys[0]

        if field_type = lookup(type_key)
          field_type.new(type_spec[type_key])
        else
          raise "Invalid type: #{type_key}"
        end
      else
        if (field_type = lookup(type_spec))
          field_type.new
        else
          begin
            ad_object_class = FacebookAds.const_get(type_spec)
            field_type = lookup('ad_object')
            field_type.new(ad_object_class)
          rescue NameError
            # fallback to string class if nothing matches
            lookup('string').new
          end
        end
      end
    end

    extend self
  end
end

Dir.glob(File.expand_path(File.join(__FILE__, '..', 'field_types', '*.rb'))).each do |file|
  require file
end
