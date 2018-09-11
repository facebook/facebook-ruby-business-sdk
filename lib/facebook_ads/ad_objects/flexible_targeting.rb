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

    field :behaviors, { list: 'IdName' }
    field :college_years, { list: 'int' }
    field :connections, { list: 'IdName' }
    field :custom_audiences, { list: 'IdName' }
    field :education_majors, { list: 'IdName' }
    field :education_schools, { list: 'IdName' }
    field :education_statuses, { list: 'int' }
    field :ethnic_affinity, { list: 'IdName' }
    field :family_statuses, { list: 'IdName' }
    field :friends_of_connections, { list: 'IdName' }
    field :generation, { list: 'IdName' }
    field :home_ownership, { list: 'IdName' }
    field :home_type, { list: 'IdName' }
    field :home_value, { list: 'IdName' }
    field :household_composition, { list: 'IdName' }
    field :income, { list: 'IdName' }
    field :industries, { list: 'IdName' }
    field :interested_in, { list: 'int' }
    field :interests, { list: 'IdName' }
    field :life_events, { list: 'IdName' }
    field :moms, { list: 'IdName' }
    field :net_worth, { list: 'IdName' }
    field :office_type, { list: 'IdName' }
    field :politics, { list: 'IdName' }
    field :relationship_statuses, { list: 'int' }
    field :user_adclusters, { list: 'IdName' }
    field :work_employers, { list: 'IdName' }
    field :work_positions, { list: 'IdName' }
    field :id, 'string'
    has_no_post
    has_no_delete

  end
end
