require 'omniauth/strategies/oauth'

module OmniAuth
  module Strategies
    class Aweber < OmniAuth::Strategies::OAuth
      option :name, 'aweber'
      option :client_options, {
          site:               'https://auth.aweber.com/1.0',
          request_token_path: '/oauth/request_token',
          authorize_path:     '/oauth/authorize',
          access_token_path:  '/oauth/access_token',
          scheme: :query_string
      }
    end
  end
end

OmniAuth.config.add_camelization 'aweber', 'Aweber'
