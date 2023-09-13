# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

module FacebookAds
  class BatchProxy < BasicObject
    def initialize(api_request)
      @api_request = api_request
      @loaded = false
      @result = nil
      @exception = nil
    end

    def set_result(result)
      @result = result
      @loaded = true
    end

    def set_error(exception)
      @exception = exception
      @loaded = true
    end

    def method_missing(method_name, *args, &block)
      if @loaded
        if @result
          @result.__send__(method_name, *args, &block)
        else
          ::Object.send(:raise, @exception)
        end
      else
        __attr_ref(method_name)
      end
    end

    def __api_request
      @api_request
    end

    def __result
      @result
    end

    def __loaded?
      @loaded
    end

    def __attr_ref(attr_name)
      # generate JSONPath of the attribute
      "{result=#{__api_request.batch_name}:$.#{attr_name}}"
    end
  end
end
