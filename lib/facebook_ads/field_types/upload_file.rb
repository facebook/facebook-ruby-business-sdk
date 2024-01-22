# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

require 'tempfile'

module FacebookAds
  module FieldTypes
    class UploadFile < Base
      register 'file'

      MIME_TYPES = {
        zip: {
          'zip'   => 'application/zip'
        },
        image: {
          'jpg'   => 'image/jpeg',
          'jpeg'  => 'image/jpeg',
          'png'   => 'image/png',
          'gif'   => 'image/gif',
          'tiff'  => 'image/tiff',
        },
        video: {
          '3g2'   => 'video/3gpp2',
          '3gp'   => 'video/3gpp',
          '3gpp'  => 'video/3gpp',
          'asf'   => 'application/vnd.ms-asf',
          'avi'   => 'video/x-msvideo',
          'dat'   => 'application/octet-stream',
          'divx'  => 'video/divx',
          'dv'    => 'video/DV',
          'f4v'   => 'video/mp4',
          'flv'   => 'video/x-flv',
          'gif'   => 'image/gif',
          'm2ts'  => 'video/mpeg',
          'm4v'   => 'video/vnd.objectvideo',
          'mkv'   => 'video/x-matroska',
          'mod'   => 'video/mod',
          'mov'   => 'video/quicktime',
          'mp4'   => 'application/mp4',
          'mpe'   => 'video/mpeg',
          'mpeg'  => 'video/mpeg',
          'mpeg4' => 'video/mpeg',
          'mpg'   => 'video/mpeg',
          'mts'   => 'model/vnd.mts',
          'nsv'   => 'application/x-winamp',
          'ogm'   => 'application/octet-stream',
          'ogv'   => 'video/ogg',
          'qt'    => 'video/quicktime',
          'tod'   => 'application/octet-stream',
          'ts'    => 'video/MP2T',
          'vob'   => 'video/x-ms-vob',
          'wmv'   => 'video/x-ms-wmv',
        },
        product_feed: {
          'csv'   => 'text/csv',
          'tsv'   => 'text/tab-separated-values',
          'xml'   => 'text/xml ',
        }
      }

      def serialize(value)
        case value
          when String, File, Tempfile
            if value.is_a?(String)
              raise InvalidParameterError, "No such file: #{value}" unless File.exist?(value)
              value = File.new(value)
            end

            ext = File.extname(value.path).gsub(/^./,'')
            category, content_type = content_type_for(ext)

            raise 'This type of file is not supported' unless content_type

            if category == :video
              FacebookAds::VideoIO.new(value, content_type)
            else
              Faraday::UploadIO.new(value, content_type)
            end
          when Faraday::UploadIO
            value
          # when etc etc TODO Rails/Sinatra Upload
          else
            raise 'Unknown data type this field'
        end
      end

      private
      def content_type_for(ext)
        MIME_TYPES.each do |category, types|
          if type = types[ext]
            return [category, type]
          end
        end
        nil
      end

      def self.acceptable?(value)
        [File, Tempfile, Faraday::UploadIO].each do |type|
          return true if value.is_a?(type)
        end

        value.is_a?(String) ? File.exist?(value) : false
      end
    end
  end
end
