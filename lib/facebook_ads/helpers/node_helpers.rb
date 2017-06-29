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
  module GraphNodes
    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def has_no_get
        include NodeHasNoGet
      end

      def has_no_id
        include NodeHasNoID
      end

      def has_no_post
        include NodeHasNoPost
      end

      def has_no_delete
        include NodeHasNoDelete
      end
    end
  end

  module NodeHasNoGet
    def load!
      raise 'load! is not supported for this object'
    end
  end

  module NodeHasNoID
    def self.included(base)
      base.send(:include, NodeHasNoGet)
      base.instance_eval do
        def get(id, *args)
          raise '#get is not supported for this object'
        end
      end
    end

    def id
      raise 'This node has no id'
    end
  end

  module NodeHasNoPost
    def self.included(base)
      base.class_eval do
        undef :save
      end
    end
  end

  module NodeHasNoDelete
    def self.included(base)
      base.class_eval do
        undef :destroy
      end
    end
  end
end
