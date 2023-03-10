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


RSpec.describe 'FacebookAds::ServerSide::AppData' do
  it 'normalize works' do
    application_tracking_enabled = true
    advertiser_tracking_enabled = true
    consider_views = true
    extinfo = FacebookAds::ServerSide::ExtendedDeviceInfo.new(
      ext_info_version: "i2",
      app_package_name: "com.facebook.sdk.samples.hellofacebook",
      short_version: "",
      long_version: "",
      os_version: "",
      device_model_name: "",
      locale: "",
      timezone_abbreviation: "",
      carrier: "",
      screen_width: "",
      screen_height: "",
      screen_density: "",
      cpu_core_count: "",
      total_disk_space_gb: "",
      free_disk_space_gb: "",
      device_time_zone: ""
    )
    include_dwell_data = true
    include_video_data = true
    install_referrer = 'a'
    installer_package = 'b'
    url_schemes = ['abc']
    windows_attribution_id = '123'
    app_data = FacebookAds::ServerSide::AppData.new(
      application_tracking_enabled: application_tracking_enabled,
      advertiser_tracking_enabled: advertiser_tracking_enabled,
      consider_views: consider_views,
      extinfo: extinfo,
      include_dwell_data: include_dwell_data,
      include_video_data: include_video_data,
      install_referrer: install_referrer,
      installer_package: installer_package,
      url_schemes: url_schemes,
      windows_attribution_id: windows_attribution_id,
    )

    expect(app_data.normalize).to eq(
      'application_tracking_enabled' => application_tracking_enabled,
      'advertiser_tracking_enabled' => advertiser_tracking_enabled,
      'consider_views' => consider_views,
      'extinfo' => ["i2", "com.facebook.sdk.samples.hellofacebook", "","","","","","","","","","","","","",""],
      'include_dwell_data' => include_dwell_data,
      'include_video_data' => include_video_data,
      'install_referrer' => install_referrer,
      'installer_package' => installer_package,
      'url_schemes' => url_schemes,
      'windows_attribution_id' => windows_attribution_id,
    )
  end


  it 'equals works' do
    app_data1 = FacebookAds::ServerSide::AppData.new()
    app_data2 = FacebookAds::ServerSide::AppData.new()
    expect(app_data1).to eq(app_data2)
    expect(app_data1.hash).to eq(app_data2.hash)

    app_data1 = FacebookAds::ServerSide::AppData.new(
      application_tracking_enabled: true,
      advertiser_tracking_enabled: true,
      consider_views: true,
      extinfo: FacebookAds::ServerSide::ExtendedDeviceInfo.new(
        ext_info_version: "i2",
        app_package_name: "com.facebook.sdk.samples.hellofacebook",
        short_version: "",
        long_version: "",
        os_version: "",
        device_model_name: "",
        locale: "",
        timezone_abbreviation: "",
        carrier: "",
        screen_width: "",
        screen_height: "",
        screen_density: "",
        cpu_core_count: "",
        total_disk_space_gb: "",
        free_disk_space_gb: "",
        device_time_zone: ""
      ),
      include_dwell_data: true,
      include_video_data: true,
      install_referrer: 'a',
      installer_package: 'b',
      url_schemes: ['abc'],
      windows_attribution_id: '123',
    )
    app_data2 = FacebookAds::ServerSide::AppData.new(
      application_tracking_enabled: true,
      advertiser_tracking_enabled: true,
      consider_views: true,
      extinfo: FacebookAds::ServerSide::ExtendedDeviceInfo.new(
        ext_info_version: "i2",
        app_package_name: "com.facebook.sdk.samples.hellofacebook",
        short_version: "",
        long_version: "",
        os_version: "",
        device_model_name: "",
        locale: "",
        timezone_abbreviation: "",
        carrier: "",
        screen_width: "",
        screen_height: "",
        screen_density: "",
        cpu_core_count: "",
        total_disk_space_gb: "",
        free_disk_space_gb: "",
        device_time_zone: ""
      ),
      include_dwell_data: true,
      include_video_data: true,
      install_referrer: 'a',
      installer_package: 'b',
      url_schemes: ['abc'],
      windows_attribution_id: '123',
    )
    expect(app_data1).to eq(app_data2)
    expect(app_data1.hash).to eq(app_data2.hash)
  end

  it 'not equals works' do
    app_data1 = FacebookAds::ServerSide::AppData.new(
      application_tracking_enabled: true,
      advertiser_tracking_enabled: true,
      consider_views: true,
      extinfo: FacebookAds::ServerSide::ExtendedDeviceInfo.new(
        ext_info_version: "i2",
        app_package_name: "com.facebook.sdk.samples.hellofacebook",
        short_version: "",
        long_version: "",
        os_version: "",
        device_model_name: "",
        locale: "",
        timezone_abbreviation: "",
        carrier: "",
        screen_width: "",
        screen_height: "",
        screen_density: "",
        cpu_core_count: "",
        total_disk_space_gb: "",
        free_disk_space_gb: "",
        device_time_zone: ""
      ),
      include_dwell_data: true,
      include_video_data: true,
      install_referrer: 'a',
      installer_package: 'b',
      url_schemes: ['abc'],
      windows_attribution_id: '123',
    )
    app_data2 = FacebookAds::ServerSide::AppData.new(
      application_tracking_enabled: true,
      advertiser_tracking_enabled: true,
      extinfo: FacebookAds::ServerSide::ExtendedDeviceInfo.new(
        ext_info_version: "i2",
        app_package_name: "com.facebook.sdk.samples.hellofacebook",
        short_version: "",
        long_version: "",
        os_version: "",
        device_model_name: "",
        locale: "",
        timezone_abbreviation: "",
        carrier: "",
        screen_width: "",
        screen_height: "",
        screen_density: "",
        cpu_core_count: "",
        total_disk_space_gb: "",
        free_disk_space_gb: "",
        device_time_zone: ""
      ),
    )

    expect(app_data1).to_not eq(app_data2)
    expect(app_data1.hash).to_not eq(app_data2.hash)
  end
end
