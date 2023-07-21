# Facebook Business SDK for Ruby

[![Packagist](https://img.shields.io/gem/v/facebookbusiness)](https://rubygems.org/gems/facebookbusiness)
[![License](https://img.shields.io/badge/license-Facebook%20Platform-blue.svg?style=flat-square)](https://github.com/facebook/facebook-ruby-business-sdk/blob/main/LICENSE.txt)
[![Build Status](https://img.shields.io/github/actions/workflow/status/facebook/facebook-ruby-business-sdk/ci.yml)](https://github.com/facebook/facebook-ruby-business-sdk/actions/workflows/ci.yml)

### Introduction

The Facebook <a href="https://developers.facebook.com/docs/business-sdk" target="_blank">Business SDK</a> is a one-stop shop to help our partners better serve their businesses. Partners are using multiple Facebook API's to serve the needs of their clients. Adopting all these API's and keeping them up to date across the various platforms can be time consuming and ultimately prohibitive. For this reason Facebook has developed the Business SDK bundling many of its APIs into one SDK to ease implementation and upkeep. The Business SDK is an upgraded version of the Marketing API SDK that includes the Marketing API as well as many Facebook APIs from different platforms such as Pages, Business Manager, Instagram, etc.

## Quick Start

Business SDK <a href="https://developers.facebook.com/docs/business-sdk/getting-started" target="_blank">Getting Started Guide</a>

## Pre-requisites

### Ruby Version
The minimum version supported is Ruby 3.0.

### Register An App

To get started with the SDK, you must have an app
registered on <a href="https://developers.facebook.com/" target="_blank">developers.facebook.com</a>.

To manage the Marketing API, please visit your
<a href="https://developers.facebook.com/apps/<YOUR APP ID>/dashboard"> App Dashboard </a>
and add the <b>Marketing API</b> product to your app.

**IMPORTANT**: For security, it is recommended that you turn on 'App Secret
Proof for Server API calls' in your app's Settings->Advanced page.

### Obtain An Access Token

When someone connects with an app using Facebook Login and approves the request
for permissions, the app obtains an access token that provides temporary, secure
access to Facebook APIs.

An access token is an opaque string that identifies a User, app, or Page.

For example, to access the Marketing API, you need to generate a User access token
for your app and ask for the ``ads_management`` permission; to access Pages API,
you need to generate a Page access token for your app and ask for the ``manage_page`` permission.

Refer to our
<a href="https://developers.facebook.com/docs/facebook-login/access-tokens" target="_blank">
Access Token Guide</a> to learn more.

For now, we can use the
<a href="https://developers.facebook.com/tools/explorer" target="_blank">Graph Explorer</a>
to get an access token.

## Installation
The SDK is available as a RubyGem. To use the gem, you can add the following to Gemfile

```ruby
gem 'facebookbusiness'
```

or install it using command line

```bash
gem install facebookbusiness
```

and then in your code

```ruby
require 'facebookbusiness'
```


## Configuration
### Access Token
There are several ways to configure access token and app secret. If you only use one access token and app secret (example: an internal app managing only your own assets). You can set a global access token and app secret will be used across all requests

```ruby
FacebookAds.configure do |config|
  config.access_token = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
  config.app_secret = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
end
```

Another way is to configure using environment variables, which will be picked up by the SDK as the default

```bash
FB_ACCESS_TOKEN=asdsadasds
FB_APP_SECRET=asdasdsa
```

Or you can create a session object for particular object

```ruby
# Create a Session object to be reused
session = FacebookAds::Session.new(access_token: <ACCESS_TOKEN>, app_secret: <APP SECRET>)
ad_account = FacebookAds::AdAccount.get('act_<YOUR_AD_ACCOUNT_ID>', 'name', session)

# Or a using shortcut during object instantiation
ad_account = FacebookAds::AdAccount.get('act_<YOUR_AD_ACCOUNT_ID>', 'name', {
    access_token: <ACCESS_TOKEN>, app_secret: <APP SECRET>
})
```

## Basic Operations

### Reading a node
The SDK contains ad object files auto generated from our API metadata, each node type has its own corresponding Ruby class under the `FacebookAds` module. For example, to fetch an AdAccount

```ruby
ad_account = FacebookAds::AdAccount.get('act_<YOUR_AD_ACCOUNT_ID>', 'name')
puts "Ad Account Name: #{ad_account.name}"
```

The `#get` method doesn't trigger the `GET` request immediately. The API request for `GET` is fired on-demand. In the example above, API request won't fire until `ad_account.name` is executed.

### Updating a node
To update a node, you can use the `#save` method of ad object classes.

```ruby
ad_account = FacebookAds::AdAccount.get('act_<YOUR_AD_ACCOUNT_ID>', 'name')
ad_account.name = "New Ad Account"
ad_account.save

# Fetch it again
ad_account.reload!
ad_account.name
=> "New Ad Account"
```

### Deleting a node
To delete a node, you can use the `#destroy` method.

```ruby
campaign = FacebookAds::Campaign.get('<CAMPAIGN_ID>')
campaign.destroy
```

### Reference
You can refer to our [Marketing API reference](https://developers.facebook.com/docs/marketing-api/reference/) or look inside `lib/facebook_ads/ad_objects` directory of the code base to see the complete list of available ad objects.

## Interacting with Edges

To interact with an edge, you first need to instantiate the parent node. Since, as mentioned above, `GET` request of a node is triggered on-demand, so you don't need to worry about consuming unnecessary API quota.

### Fetching Edges (GET)

Iterating edges is easy, instantiate the parent nodes and then simply iterate with `#each`. The edge is an  `Enumerable` so a bunch of handy methods such as `#map`, `#select`, `#find` etc. come for free!

```ruby
ad_account = FacebookAds::AdAccount.get('act_<YOUR_AD_ACCOUNT_ID>', 'name')

# Printing all campaign names
ad_account.campaigns(fields: 'name').each do |campaign|
  puts campaign.name
end

# Getting all campaign names
ad_account.campaigns(fields: 'name').map(&:name)

```

### Creating new nodes (POST)
To `POST` to a edge, you can use the `#create` method on the edge and supply parameter if needed

```ruby
campaign = ad_account.campaigns.create({
  name: "My First campaign",
  objective: "CONVERSIONS",
})
```

### Removing from edge (DELETE)
To `DELETE` an edge, you can use the `#destroy` method on the edge and supply parameter if needed

```ruby
# Deleting an AdImage by its hash
ad_account.adimages.destroy({hash: 'abcd1234'})
```

## Images/Videos
The SDK supports image/video uploads. Just supply a parameter of `File` type.

Image upload example:

```ruby
# AdImage supports multiple images upload
ad_account.adimages.create({
  'logo1.png' => File.open('./assets/logo1.jpg'),
  'logo2.png' => File.open('./assets/logo2.jpg'),
})
=> [#<FacebookAds::AdImage {:hash=>"..."}>, #<FacebookAds::AdImage {:hash=>"..."}>]
```

Video upload example:

```ruby
ad_account.advideos.create({
  name: 'My first video',
  source: File.open(File.expand_path("../video_ad_example.mp4", __FILE__))
})
```

## Batch API

[Batch API](https://developers.facebook.com/docs/marketing-api/asyncrequests) allows you to make API calls in a batch. You can collect a bunch of API requests and fire them all at once to reduce wait time. To create a batch, just wrap operations with a block to `FacebookAds::Batch#with_batch`

```ruby
ad_account = FacebookAds::AdAccount.get('act_<YOUR_AD_ACCOUNT_ID>')

batch = FacebookAds::Batch.with_batch do
  10.times.map do |n|
    ad_account.campaigns.create({
      name: 'My Test Campaign #' + n,
      objective: 'CONVERSIONS',
      status: 'PAUSED',
    })
  end
end

batch.execute
```

### Dependencies within a batch (Experimental)
Dependencies between requests is supported, the SDK simplifies the use of JSONPath references between batched operations.

```ruby
ad_account = FacebookAds::AdAccount.get('act_<YOUR_AD_ACCOUNT_ID>')

batch = FacebookAds::Batch.with_batch do
  # This won't be sent out immediately!
  campaign = ad_account.campaigns.create({
    name: 'My Test Campaign',
    objective: 'CONVERSIONS',
    status: 'PAUSED',
  })

  # Even the request above is not being sent yet, reference to campaign.id still works
  ad_accounts.adsets.create({
    name: 'My AdSet',
    campaign_id: campaign.id, # campaign.id here will return {result=create-campaign:$.id}
    ...
    ...
    ...
  })
end
```

## Logging

```ruby
FacebookAds.configure do |config|
  # Logger for debugger
  config.logger = ::Logger.new(STDOUT).tap { |d| d.level = Logger::DEBUG }

  # Log Http request & response to logger
  config.log_api_bodies = true
end
```

## SDK Codegen
Our SDK is autogenerated from [SDK Codegen](https://github.com/facebook/facebook-business-sdk-codegen). If you want to learn more about how our SDK code is generated, please check this repository.

## Reporting Bugs/Feedback
Please raise any issue on GitHub.

## License
Facebook Business SDK for Ruby is licensed under the LICENSE file in the root directory of this source tree.
