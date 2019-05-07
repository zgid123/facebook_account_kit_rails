module FBAccountKit
  class Configuration
    class << self
      attr_accessor :app_id, :account_kit_app_secret, :account_kit_client_token, :version
    end
  end
end
