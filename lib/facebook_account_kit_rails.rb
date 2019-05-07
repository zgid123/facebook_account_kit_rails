require 'openssl'
require 'facebook_account_kit_rails/version'
require 'facebook_account_kit_rails/configuration'

module FacebookAccountKitRails
  class << self
    def configure
      yield Configuration
    end

    def access_token
      "AA|#{Configuration.app_id}|#{Configuration.account_kit_app_secret}"
    end

    def appsecret_proof(user_access_token)
      OpenSSL::HMAC.hexdigest('sha256', Configuration.account_kit_app_secret, user_access_token)
    end
  end
end
