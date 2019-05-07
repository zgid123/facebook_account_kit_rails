module FBAccountKit
  class << self
    def configure
      yield Configuration
    end

    def version
      Configuration.version || 'v1.3'
    end

    def access_token
      "AA|#{Configuration.app_id}|#{Configuration.account_kit_app_secret}"
    end

    def appsecret_proof(user_access_token)
      OpenSSL::HMAC.hexdigest('sha256', Configuration.account_kit_app_secret, user_access_token)
    end
  end
end
