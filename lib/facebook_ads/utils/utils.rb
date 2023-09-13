# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

require 'logger'

module FacebookAds
  module Utils
    extend self

    attr_accessor :logger
    self.logger = Logger.new(STDERR)
    self.logger.level = Logger::ERROR
  end
end
