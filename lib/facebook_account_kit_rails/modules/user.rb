module FBAccountKit
  class User
    class << self
      def retrieve_access_token_with_auth_code(auth_code)
        Request.get('/access_token', query: {
          code: auth_code,
          grant_type: 'authorization_code',
          access_token: FBAccountKit.access_token
        })
      end

      def get_user_info(access_token)
        Request.get('/me', query: {
          access_token: access_token,
          appsecret_proof: FBAccountKit.appsecret_proof
        })
      end
    end
  end
end
