# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

# Intercept Minitest exit routine and return our own custom exit code
Minitest.after_run {
  FacebookAds::Test.failures.each do |failure|
    case failure
      when Minitest::Skip
        exit FacebookAds::Test::ExitCodes::USER_SKIP
      when Minitest::UnexpectedError
        e = failure.exception
        if e.is_a?(FacebookAds::ServerError) ||
            e.is_a?(FacebookAds::ClientError)
          exit FacebookAds::Test::ExitCodes::EXTERNAL_ERROR
        else
          exit FacebookAds::Test::ExitCodes::USER_ERROR
        end
    end
  end
}
