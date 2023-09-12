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

# FB:AUTOGEN

module FacebookAds
  # This class is auto-generated.

  # For any issues or feature requests related to this class, please let us know
  # on github and we'll fix in our codegen framework. We'll not be able to accept
  # pull request for this class.

  class WhatsAppBusinessPreVerifiedPhoneNumber < AdObject
    CODE_VERIFICATION_STATUS = [
      "EXPIRED",
      "NOT_VERIFIED",
      "VERIFIED",
    ]


    field :code_verification_status, 'string'
    field :code_verification_time, 'datetime'
    field :id, 'string'
    field :phone_number, 'string'
    field :verification_expiry_time, 'datetime'
    has_no_post

    has_edge :request_code do |edge|
      edge.post do |api|
        api.has_param :code_method, { enum: %w{SMS VOICE }}
        api.has_param :language, 'object'
      end
    end

    has_edge :verify_code do |edge|
      edge.post do |api|
        api.has_param :code, 'string'
      end
    end

  end
end
