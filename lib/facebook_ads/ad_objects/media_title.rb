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

  class MediaTitle < AdObject

    field :applinks, 'AppLinks'
    field :content_category, 'string'
    field :content_countries, { list: 'string' }
    field :content_locale, 'string'
    field :crew, { list: 'string' }
    field :currency, 'string'
    field :description, 'string'
    field :episode, 'int'
    field :fb_page_alias, 'string'
    field :fb_page_id, 'Page'
    field :genres, { list: 'string' }
    field :id, 'string'
    field :images, { list: 'string' }
    field :instagram_username, 'string'
    field :media_source, 'string'
    field :media_title_id, 'string'
    field :mpaa_rating, 'string'
    field :performers, { list: 'string' }
    field :price, 'string'
    field :release_date, 'string'
    field :sanitized_images, { list: 'string' }
    field :season, 'int'
    field :similar_titles, { list: 'string' }
    field :subtitle_locale, 'string'
    field :title, 'string'
    field :url, 'string'
    field :view_count_eighty_four_days, 'object'
    field :view_count_fourteen_days, 'object'
    field :view_count_one_day, 'object'
    field :view_count_seven_days, 'object'
    field :view_count_twenty_eight_days, 'object'
    field :wiki_data_item, 'string'
    field :wikipedia_url, 'string'
    has_no_post
    has_no_delete

  end
end
