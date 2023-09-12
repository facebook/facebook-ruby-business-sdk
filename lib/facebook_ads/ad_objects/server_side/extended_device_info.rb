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


module FacebookAds
  module ServerSide
    # ExtendedDeviceInfo, such as screen width and height. This parameter is an array and values are separated by commas.
    class ExtendedDeviceInfo

        attr_accessor :ext_info_version,
                      :app_package_name,
                      :short_version,
                      :long_version,
                      :os_version,
                      :device_model_name,
                      :locale,
                      :timezone_abbreviation,
                      :carrier,
                      :screen_width,
                      :screen_height,
                      :screen_density,
                      :cpu_core_count,
                      :total_disk_space_gb,
                      :free_disk_space_gb,
                      :device_time_zone

        # Initializes the object
        # @param [String] ext_info_version
        # @param [String] app_package_name
        # @param [String] short_version
        # @param [String] long_version
        # @param [String] os_version
        # @param [String] device_model_name
        # @param [String] locale
        # @param [String] timezone_abbreviation
        # @param [String] carrier
        # @param [String] screen_width
        # @param [String] screen_height
        # @param [String] screen_density
        # @param [String] cpu_core_count
        # @param [String] total_disk_space_gb
        # @param [String] free_disk_space_gb
        # @param [String] device_time_zone
        def initialize(ext_info_version: nil, app_package_name: nil, short_version: nil, long_version: nil, os_version: nil, device_model_name: nil, locale: nil, timezone_abbreviation: nil,
            carrier: nil, screen_width: nil, screen_height: nil, screen_density: nil, cpu_core_count: nil, total_disk_space_gb: nil, free_disk_space_gb: nil, device_time_zone: nil)
            unless ext_info_version.nil?
              self.ext_info_version = String(ext_info_version)
            end
            unless app_package_name.nil?
              self.app_package_name = String(app_package_name)
            end
            unless short_version.nil?
              self.short_version = String(short_version)
            end
            unless long_version.nil?
              self.long_version = String(long_version)
            end
            unless os_version.nil?
              self.os_version = String(os_version)
            end
            unless device_model_name.nil?
              self.device_model_name = String(device_model_name)
            end
            unless locale.nil?
              self.locale = String(locale)
            end
            unless timezone_abbreviation.nil?
              self.timezone_abbreviation = String(timezone_abbreviation)
            end
            unless carrier.nil?
                self.carrier = String(carrier)
            end
            unless screen_width.nil?
                self.screen_width = String(screen_width)
            end
            unless screen_height.nil?
                self.screen_height = String(screen_height)
            end
            unless screen_density.nil?
                self.screen_density = String(screen_density)
            end
            unless cpu_core_count.nil?
                self.cpu_core_count = String(cpu_core_count)
            end
            unless total_disk_space_gb.nil?
                self.total_disk_space_gb = String(total_disk_space_gb)
            end
            unless free_disk_space_gb.nil?
                self.free_disk_space_gb = String(free_disk_space_gb)
            end
            unless device_time_zone.nil?
                self.device_time_zone = String(device_time_zone)
            end
        end

        # build the object using the input hash
        # @param [Hash] attributes  attributes in the form of hash
        def build(attributes = {})
            return unless attributes.is_a?(Hash)

            # convert string to symbol for hash key
            attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

            if attributes.has_key?(:'ext_info_version')
                self.ext_info_version = attributes[:'ext_info_version']
            end

              if attributes.has_key?(:'app_package_name')
                self.app_package_name = attributes[:'app_package_name']
              end

              if attributes.has_key?(:'short_version')
                self.short_version = attributes[:'short_version']
              end

              if attributes.has_key?(:'long_version')
                self.long_version = attributes[:'long_version']
              end

              if attributes.has_key?(:'os_version')
                self.os_version = attributes[:'os_version']
              end

              if attributes.has_key?(:'device_model_name')
                self.device_model_name = attributes[:'device_model_name']
              end

              if attributes.has_key?(:'locale')
                self.locale = attributes[:'locale']
              end

              if attributes.has_key?(:'timezone_abbreviation')
                self.timezone_abbreviation = attributes[:'timezone_abbreviation']
              end

              if attributes.has_key?(:'carrier')
                self.carrier = attributes[:'carrier']
              end

              if attributes.has_key?(:'screen_width')
                self.screen_width = attributes[:'screen_width']
              end

              if attributes.has_key?(:'screen_height')
                self.screen_height = attributes[:'screen_height']
              end

              if attributes.has_key?(:'screen_density')
                self.screen_density = attributes[:'screen_density']
              end

              if attributes.has_key?(:'cpu_core_count')
                self.cpu_core_count = attributes[:'cpu_core_count']
              end

              if attributes.has_key?(:'total_disk_space_gb')
                self.total_disk_space_gb = attributes[:'total_disk_space_gb']
              end

              if attributes.has_key?(:'free_disk_space_gb')
                self.free_disk_space_gb = attributes[:'free_disk_space_gb']
              end

              if attributes.has_key?(:'device_time_zone')
                self.device_time_zone = attributes[:'device_time_zone']
              end
        end


        # Checks equality by comparing each attribute.
        def ==(o)
            return self.class == o.class &&
                ext_info_version == o.ext_info_version &&
                app_package_name == o.app_package_name &&
                short_version == o.short_version &&
                long_version == o.long_version &&
                os_version == o.os_version &&
                device_model_name == o.device_model_name &&
                locale == o.locale &&
                timezone_abbreviation == o.timezone_abbreviation &&
                carrier == o.carrier &&
                screen_width == o.screen_width &&
                screen_height == o.screen_height &&
                screen_density == o.screen_density &&
                cpu_core_count == o.cpu_core_count &&
                total_disk_space_gb == o.total_disk_space_gb &&
                free_disk_space_gb == o.free_disk_space_gb &&
                device_time_zone == o.device_time_zone
        end

        # @see the `==` method
        def eql?(o)
            self == o
        end

        # Calculates hash code according to all attributes.
        # @return [Fixnum] Hash code
        def hash
            [
                ext_info_version,
                app_package_name,
                short_version,
                long_version,
                os_version,
                device_model_name,
                locale,
                timezone_abbreviation,
                carrier,
                screen_width,
                screen_height,
                screen_density,
                cpu_core_count,
                total_disk_space_gb,
                free_disk_space_gb,
                device_time_zone
            ].hash
        end

        # Returns the string representation of the object
        # @return [String] String presentation of the object
        def to_s
          hash = {}
          unless ext_info_version.nil?
            hash['ext_info_version'] = ext_info_version
          end
          unless app_package_name.nil?
            hash['app_package_name'] = app_package_name
          end
          unless short_version.nil?
            hash['short_version'] = short_version
          end
          unless long_version.nil?
            hash['long_version'] = long_version
          end
          unless os_version.nil?
            hash['os_version'] = os_version
          end
          unless device_model_name.nil?
            hash['device_model_name'] = device_model_name
          end
          unless locale.nil?
            hash['locale'] = locale
          end
          unless timezone_abbreviation.nil?
            hash['timezone_abbreviation'] = timezone_abbreviation
          end
          unless carrier.nil?
            hash['carrier'] = carrier
          end
          unless screen_width.nil?
            hash['screen_width'] = screen_width
          end
          unless screen_height.nil?
            hash['screen_height'] = screen_height
          end
          unless screen_density.nil?
            hash['screen_density'] = screen_density
          end
          unless cpu_core_count.nil?
            hash['cpu_core_count'] = cpu_core_count
          end
          unless total_disk_space_gb.nil?
            hash['total_disk_space_gb'] = total_disk_space_gb
          end
          unless free_disk_space_gb.nil?
            hash['free_disk_space_gb'] = free_disk_space_gb
          end
          unless device_time_zone.nil?
            hash['device_time_zone'] = device_time_zone
          end
          hash.to_s
        end

        # Normalize input fields to server request format.
        def normalize
          ext_info_array = []
          unless ext_info_version.nil?
            ext_info_array.push(ext_info_version)
          end
          unless app_package_name.nil?
            ext_info_array.push(app_package_name)
          end
          unless short_version.nil?
            ext_info_array.push(short_version)
          end
          unless long_version.nil?
            ext_info_array.push(long_version)
          end
          unless os_version.nil?
            ext_info_array.push(os_version)
          end
          unless device_model_name.nil?
            ext_info_array.push(device_model_name)
          end
          unless locale.nil?
            ext_info_array.push(locale)
          end
          unless timezone_abbreviation.nil?
            ext_info_array.push(timezone_abbreviation)
          end
          unless carrier.nil?
            ext_info_array.push(carrier)
          end
          unless screen_width.nil?
            ext_info_array.push(screen_width)
          end
          unless screen_height.nil?
            ext_info_array.push(screen_height)
          end
          unless screen_density.nil?
            ext_info_array.push(screen_density)
          end
          unless cpu_core_count.nil?
            ext_info_array.push(cpu_core_count)
          end
          unless total_disk_space_gb.nil?
            ext_info_array.push(total_disk_space_gb)
          end
          unless free_disk_space_gb.nil?
            ext_info_array.push(free_disk_space_gb)
          end
          unless device_time_zone.nil?
            ext_info_array.push(device_time_zone)
          end
          ext_info_array
        end
    end
  end
end
