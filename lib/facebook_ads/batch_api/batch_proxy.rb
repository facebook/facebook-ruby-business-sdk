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
