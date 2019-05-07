module FBAccountKit
  class Request
    include HTTParty

    base_uri "https://graph.accountkit.com/#{FBAccountKit.version}"
  end
end
