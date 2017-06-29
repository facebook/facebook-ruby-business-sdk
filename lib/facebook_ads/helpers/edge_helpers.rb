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

require 'digest/md5'
require 'json'

module FacebookAds
  module GraphEdges
    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def edge_classes
        @edge_classes
      end

      def has_edge(name, &block)
        edge_class = Class.new(Edge)
        yield edge_class

        @edge_classes ||= {}
        @edge_classes[name] = edge_class

        # delegate to field if name collides
        should_delegate = field_types.keys.include?(name)

        define_method(name) do |opts = {}|
          @edge_proxies ||= {}

          @edge_proxies["#{name}_#{self.class.options_hash(opts)}"] ||= begin
            edge_class.new(name, self, should_delegate, opts)
          end
        end
      end

      def options_hash(opts)
        Digest::MD5.hexdigest(JSON.generate(opts))
      end
    end
  end
end
