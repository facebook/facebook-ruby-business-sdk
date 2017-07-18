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