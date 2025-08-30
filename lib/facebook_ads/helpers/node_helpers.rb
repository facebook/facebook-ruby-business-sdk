# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

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
