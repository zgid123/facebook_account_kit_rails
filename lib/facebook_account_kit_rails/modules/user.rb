module FBAccountKit
  class User
    class << self
      def retrieve_access_token_with_auth_code(auth_code)
        result = Request.get('/access_token', query: {
          code: auth_code,
          grant_type: 'authorization_code',
          access_token: FBAccountKit.access_token
        })

        Response.new(result)
      end

      def get_user_info(access_token)
        result = Request.get('/me', query: {
          access_token: access_token,
          appsecret_proof: FBAccountKit.appsecret_proof
        })

        Response.new(result)
      end
    end
  end
end
