require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Sugarmate < OmniAuth::Strategies::OAuth2
      option :name, :sugarmate

      option :client_options, {
        :site => "http://sugarmate.io",
        :authorize_url => "/oauth/authorize"
      }

      uid { raw_info["id"] }

      info do
        {
          :email => raw_info["email"],
          :nickname => raw_info["nickname"]
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/me.json').parsed
      end

      # https://github.com/intridea/omniauth-oauth2/issues/81
      def callback_url
        full_host + script_name + callback_path
      end
    end
  end
end