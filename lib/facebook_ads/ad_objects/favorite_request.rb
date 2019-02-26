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

  class FavoriteRequest < AdObject
    HTTP_METHOD = [
      "DELETE",
      "GET",
      "POST",
    ]

    API_VERSION = [
      "unversioned",
      "v1.0",
      "v2.0",
      "v2.1",
      "v2.10",
      "v2.11",
      "v2.12",
      "v2.2",
      "v2.3",
      "v2.4",
      "v2.5",
      "v2.6",
      "v2.7",
      "v2.8",
      "v2.9",
      "v3.0",
      "v3.1",
      "v3.2",
      "v3.3",
    ]


    field :api_version, 'string'
    field :description, 'string'
    field :graph_path, 'string'
    field :hash, 'string'
    field :http_method, { enum: -> { HTTP_METHOD }}
    field :id, 'string'
    field :post_params, { list: 'object' }
    field :query_params, { list: 'object' }
    has_no_post

  end
end
