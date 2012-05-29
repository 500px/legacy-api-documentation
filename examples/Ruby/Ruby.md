# Ruby xAuth Client

    require 'rubygems'
    require 'oauth'

    CONSUMER_KEY = 'YOUR-CONSUMER-KEY'
    CONSUMER_SECRET = 'YOUR-CONSUMER-SECRET'

    def get_access_token
      p "get_access_token: Initializing Consumer" 
      consumer = OAuth::Consumer.new(CONSUMER_KEY, CONSUMER_SECRET, {
      :site               => "http://500px.com",
      :request_token_path => "/api/v1/oauth/request_token",
      :access_token_path  => "/api/v1/oauth/access_token",
      :authorize_path     => "/api/v1/oauth/authorize"})

      request_token = consumer.get_request_token()
      access_token = consumer.get_access_token(request_token, {}, { :x_auth_mode => 'client_auth', :x_auth_username => 'YOUR-USERNAME', :x_auth_password => 'YOUR-PASSWORD' })

      [access_token.token, access_token.secret]
    end

    def access_api(token, secret)
      consumer = OAuth::Consumer.new(CONSUMER_KEY, CONSUMER_SECRET, {
      :site               => "http://500px.com",
      :access_token_path  => "/api/v1/oauth/access_token",
      :authorize_path     => "/api/v1/oauth/authorize"})
      access_token = OAuth::AccessToken.new(consumer, token, secret)

      access_token.get('http://500px.com/api/v1/photos.json')
      access_token.post('http://500px.com/api/v1/photos/1234567/vote.json?vote=1')
    end

    token, secret = get_access_token
    p "token: #{token}" 
    p "secret: #{secret}" 

    response = access_api(token, secret)
    p response