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

  class ProductFeedUpload < AdObject
    INPUT_METHOD = [
      "Manual Upload",
      "Server Fetch",
      "Reupload Last File",
      "User initiated server fetch",
    ]


    field :end_time, 'datetime'
    field :error_count, 'int'
    field :filename, 'string'
    field :id, 'string'
    field :input_method, { enum: -> { INPUT_METHOD }}
    field :num_deleted_items, 'int'
    field :num_detected_items, 'int'
    field :num_invalid_items, 'int'
    field :num_persisted_items, 'int'
    field :start_time, 'datetime'
    field :url, 'string'
    field :warning_count, 'int'
    has_no_post
    has_no_delete

    has_edge :errors do |edge|
      edge.get 'ProductFeedUploadError'
    end

    has_edge :progresses do |edge|
      edge.get 'ProductFeedUploadProgress'
    end

  end
end
