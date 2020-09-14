# Changelog

All notable changes to this project will be documented in this file.


## Unreleased
### Added
- Added async support to Conversions API - Create event request promises by using EventRequestAsync.
- `lead_id` field to the Conversions API `user_data` section.

## v0.8.0.0
### Changed
- Graph API call upgrade to [v8.0](https://developers.facebook.com/docs/graph-api/changelog/version8.0)

### Added
- `delivery_category` field in custom_data section for Conversions API(formerly Serverside API).

## v0.7.0.2
### Added
- Added support for data processing options in Serverside API. For more details see : https://developers.facebook.com/docs/marketing-apis/data-processing-options

## v0.7.0.0
### Changed
- Graph API call upgrade to [v7.0](https://developers.facebook.com/docs/graph-api/changelog/version7.0)

## v0.6.0.0
### Changed
- Graph API call upgrade to [v6.0](https://developers.facebook.com/docs/graph-api/changelog/version6.0)

## v0.5.0.4
### Added
  - Server-side API added search-string field to custom data.
### Fixed
  - Fix facebook_ads to autoload Server-side API classes.

## v0.5.0.3
### Added
  - Added function `getHeaders` in errors class which provides header information
  - Server-Side API for web with model object - https://developers.facebook.com/docs/marketing-api/facebook-pixel/server-side-api/

## v0.5.0.2

### Added
  - Added `CrashLogger`, more context available [here](https://developers.facebook.com/docs/business-sdk/guides/crash-reports)

## v0.5.0.0
### Changed
- Graph API call upgrade to [v5.0](https://developers.facebook.com/docs/graph-api/changelog/version5.0)

## v0.4.0.7
### Fixed
 - [PR81](https://github.com/facebook/facebook-ruby-business-sdk/pull/81)

## v0.4.0.6
### Fixed
 - Add back `source` param in `adaccount, edge.post 'AdVideo'`.

## v0.4.0.0
### Changed
- Graph API call upgrade to [v4.0](https://developers.facebook.com/docs/graph-api/changelog/version4.0)

## v0.3.3.1
### Changed
- Remove list of API call from Business SDK, any [these APIs](https://developers.facebook.com/docs/graph-api/changelog/4-30-2019-endpoint-deprecations) included in Business SDK will be deprecated.

## v0.3.3.0
### Changed
- Graph API call upgrade to [v3.3](https://developers.facebook.com/docs/graph-api/changelog/version3.3)
