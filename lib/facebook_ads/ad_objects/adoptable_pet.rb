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

  class AdoptablePet < AdObject

    field :address, 'object'
    field :adoptable_pet_id, 'string'
    field :adoption_application_form_url, 'string'
    field :age_bucket, 'string'
    field :animal_type, 'string'
    field :applinks, 'CatalogItemAppLinks'
    field :availability, 'string'
    field :breed, 'string'
    field :category_specific_fields, 'CatalogSubVerticalList'
    field :coat_length, 'string'
    field :color, 'string'
    field :currency, 'string'
    field :description, 'string'
    field :features, { list: 'string' }
    field :gender, 'string'
    field :id, 'string'
    field :images, { list: 'string' }
    field :name, 'string'
    field :price, 'string'
    field :sanitized_images, { list: 'string' }
    field :secondary_color, 'string'
    field :shelter_email, 'string'
    field :shelter_name, 'string'
    field :shelter_page_id, 'Page'
    field :shelter_phone, 'string'
    field :size, 'string'
    field :tertiary_color, 'string'
    field :url, 'string'
    has_no_post
    has_no_delete

  end
end
