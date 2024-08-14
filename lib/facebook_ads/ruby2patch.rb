# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

class Hash
  def dig(k, *ks)
    key?(k) ? (ks.empty? ? self[k] : self[k].dig(*ks)) : nil
  end unless method_defined?(:dig)

  def compact
    self.select { |_, value| !value.nil? }
  end unless method_defined?(:compact)
end
