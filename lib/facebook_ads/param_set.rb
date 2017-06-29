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
