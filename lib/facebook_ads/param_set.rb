# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

module FacebookAds
  class ParamSet
    def initialize
      @params = {}
      @accepts_files = false
    end

    def has_param(name, type)
      @params[name.to_sym] = FieldTypes.for(type)
    end

    def accepts_files!
      @accepts_files = true
    end

    def accepts_files?
      @accepts_files
    end

    def to_params(data)
      Hash[data.map do |key,val|
        key = key.to_sym
        field_type = @params[key]

        if (!field_type && accepts_files? && FieldTypes::UploadFile.acceptable?(val))
          field_type = FieldTypes::UploadFile.new
        end

        if (!field_type && val.is_a?(Array)) # dynamic ads
          val = JSON.generate(val)
        end

        [key, (field_type ? field_type.serialize(val) : val)]
        # TODO CollectionProxy=
      end]
    end

    def from_params(data)
      Hash[data.map do |key,val|
        key = key.to_sym
        field_type = @params[key]

        [key, (field_type ? field_type.deserialize(val) : val)]
      end]
    end

    # TODO
    def deserialize(data)
      from_params(data)
    end

    def empty?
      @params.empty?
    end
  end
end
