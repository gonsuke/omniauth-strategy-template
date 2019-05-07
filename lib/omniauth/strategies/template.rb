require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Template < OmniAuth::Strategies::OAuth2
      # Give your strategy a name.
      option :name, "some_site"

      option :client_options, {
        :site => "https://api.somesite.com",
        :authorize_url => "https://api.somesite.com/oauth2/auth",
        :token_url => "/api/oauth2/token"
      }

      uid{ raw_info['id'] }

      info do
        {
          :name => raw_info['name'],
          :email => raw_info['email']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/me').parsed
      end
    end
  end
end