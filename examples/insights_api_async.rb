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

require 'dotenv/load'
require 'facebook_ads'

ad_account = FacebookAds::AdAccount.get('act_<ACT_ID>')
ad_report_run = ad_account.insights.create(
  limit: 10,
  level: 'ad',
  fields: %w[ad_id ad_name cpc]
  )
report_run_id = ad_report_run.attributes[:report_run_id]

timeout = 30
i = 0
while true
  job = JSON.parse(FacebookAds::AdReportRun.get(report_run_id).get.body)
  p "Job async_percent_completion=>#{job['async_percent_completion']}, async_status=>#{job['async_status']}"
  break if job['async_percent_completion'].to_i >= 100 && job['async_status'] == 'Job Completed'
  if i > timeout
    p 'Async job has timed out'
    break
  end
  i += 1
  sleep(1.0)
end

FacebookAds::AdReportRun.get(report_run_id).insights.all.each do |insight|
  p "insight id: #{insight.ad_id}, name: #{insight.ad_name}, cpc: #{insight.cpc}"
end

