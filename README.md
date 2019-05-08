# Introduction

Simple gem for Facebook's Account Kit.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'facebook_account_kit_rails'
```

or

```ruby
gem 'facebook_account_kit_rails', git: 'https://github.com/zgid123/facebook_account_kit_rails.git'
```

And then execute:

  $ bundle

Or install it yourself as:

  $ gem install facebook_account_kit_rails

## Configuration

```ruby
FBAccountKit.configure do |config|
  config.app_id                   = ['your_app_id']
  config.version                  = ['account_kit_graph_api_version']
  config.account_kit_app_secret   = ['your_account_kit_app_secret']
  config.account_kit_client_token = ['your_account_kit_client_token']
end
```

## Actions

- Retrieve `access_token` with authorization code

```ruby
FBAccountKit::User.retrieve_access_token_with_auth_code(auth_token)
```

Response

```ruby
{
  "id" : <account_kit_user_id>,
  "access_token" : <user_access_token>,
  "token_refresh_interval_sec" : <refresh_interval>
}
```

- Get user info from `access_token`

```ruby
FBAccountKit::User.get_user_info(access_token)
```

Response

```ruby
{
   id: "1234512345123451",
   phone: {
     number: "+15551234567"
     country_prefix: "1",
     national_number: "5551234567"
   },
   application: {
     id: "5432154321543210"
   }
}
```
