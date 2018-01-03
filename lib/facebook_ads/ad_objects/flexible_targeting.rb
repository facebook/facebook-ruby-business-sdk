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

  class FlexibleTargeting < AdObject

    field :behaviors, { list: 'IDName' }
    field :college_years, { list: 'int' }
    field :connections, { list: 'IDName' }
    field :custom_audiences, { list: 'IDName' }
    field :education_majors, { list: 'IDName' }
    field :education_schools, { list: 'IDName' }
    field :education_statuses, { list: 'int' }
    field :ethnic_affinity, { list: 'IDName' }
    field :family_statuses, { list: 'IDName' }
    field :friends_of_connections, { list: 'IDName' }
    field :generation, { list: 'IDName' }
    field :home_ownership, { list: 'IDName' }
    field :home_type, { list: 'IDName' }
    field :home_value, { list: 'IDName' }
    field :household_composition, { list: 'IDName' }
    field :income, { list: 'IDName' }
    field :industries, { list: 'IDName' }
    field :interested_in, { list: 'int' }
    field :interests, { list: 'IDName' }
    field :life_events, { list: 'IDName' }
    field :moms, { list: 'IDName' }
    field :net_worth, { list: 'IDName' }
    field :office_type, { list: 'IDName' }
    field :politics, { list: 'IDName' }
    field :relationship_statuses, { list: 'int' }
    field :user_adclusters, { list: 'IDName' }
    field :work_employers, { list: 'IDName' }
    field :work_positions, { list: 'IDName' }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
