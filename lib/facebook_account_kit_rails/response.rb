module FBAccountKit
  class Response
    def initialize(params)
      params = params.parsed_response if params.class.name == 'HTTParty::Response'

      params.map do |k, v|
        self.class.send(:attr_accessor, k)

        instance_variable_set("@#{k}", v)
      end
    end
  end
end
