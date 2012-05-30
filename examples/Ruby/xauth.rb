require 'rubygems'
require 'oauth'
require 'multi_json'

CONSUMER_KEY = ''
CONSUMER_SECRET = ''
USERNAME = ''
PASSWORD = ''

BASE_URL = 'https://api.500px.com'

def get_access_token
  p "get_access_token: Initializing Consumer" 
  consumer = OAuth::Consumer.new(CONSUMER_KEY, CONSUMER_SECRET, {
  :site               => BASE_URL,
  :request_token_path => "/v1/oauth/request_token",
  :access_token_path  => "/v1/oauth/access_token",
  :authorize_path     => "/v1/oauth/authorize"})

  request_token = consumer.get_request_token()
  p "Request URL: #{request_token.authorize_url}"
  access_token = consumer.get_access_token(request_token, {}, { :x_auth_mode => 'client_auth', :x_auth_username => USERNAME, :x_auth_password => PASSWORD })
  access_token
end

access_token = get_access_token
p "token: #{access_token.token}" 
p "secret: #{access_token.secret}" 


#p access_token.get('/v1/photos.json').body
p MultiJson.decode(access_token.get('/v1/users.json').body).inspect