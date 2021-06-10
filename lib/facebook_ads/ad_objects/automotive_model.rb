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

  class AutomotiveModel < AdObject
    IMAGE_FETCH_STATUS = [
      "DIRECT_UPLOAD",
      "FETCHED",
      "FETCH_FAILED",
      "NO_STATUS",
      "OUTDATED",
      "PARTIAL_FETCH",
    ]

    BODY_STYLE = [
      "CONVERTIBLE",
      "COUPE",
      "CROSSOVER",
      "ESTATE",
      "GRANDTOURER",
      "HATCHBACK",
      "MINIBUS",
      "MINIVAN",
      "MPV",
      "NONE",
      "OTHER",
      "PICKUP",
      "ROADSTER",
      "SALOON",
      "SEDAN",
      "SPORTSCAR",
      "SUPERCAR",
      "SUPERMINI",
      "SUV",
      "TRUCK",
      "VAN",
      "WAGON",
    ]


    field :applinks, 'CatalogItemAppLinks'
    field :automotive_model_id, 'string'
    field :availability, 'string'
    field :body_style, 'string'
    field :category_specific_fields, 'CatalogSubVerticalList'
    field :currency, 'string'
    field :custom_label_0, 'string'
    field :description, 'string'
    field :drivetrain, 'string'
    field :exterior_color, 'string'
    field :finance_description, 'string'
    field :finance_type, 'string'
    field :fuel_type, 'string'
    field :generation, 'string'
    field :id, 'string'
    field :image_fetch_status, { enum: -> { IMAGE_FETCH_STATUS }}
    field :images, { list: 'string' }
    field :interior_color, 'string'
    field :interior_upholstery, 'string'
    field :make, 'string'
    field :model, 'string'
    field :price, 'string'
    field :sanitized_images, { list: 'string' }
    field :title, 'string'
    field :transmission, 'string'
    field :trim, 'string'
    field :url, 'string'
    field :year, 'int'
    has_no_post
    has_no_delete

    has_edge :augmented_realities_metadata do |edge|
      edge.get
    end

    has_edge :channels_to_integrity_status do |edge|
      edge.get 'CatalogItemChannelsToIntegrityStatus'
    end

    has_edge :videos_metadata do |edge|
      edge.get
    end

  end
end
