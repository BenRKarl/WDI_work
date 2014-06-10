require "bundler"
Bundler.require

use Rack::Session::Cookie
use OmniAuth::Strategies::Developer

use OmniAuth::Builder do
  provider :instagram, '453bca5d6c3e43698a3cce9eb67984e4', 'd9bb287287af4ac0936e63d706934fa9'
end

get "/" do
  # @url = "https://api.instagram.com/oauth/authorize/?client_id=453bca5d6c3e43698a3cce9eb67984e4&redirect_uri=REDIRECT-URI&response_type=code"
  @instagram_url = "/auth/instagram"
  erb :index
end

get "/auth/:provider/callback" do
  erb :welcome
end

