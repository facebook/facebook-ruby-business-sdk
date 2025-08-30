# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

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
