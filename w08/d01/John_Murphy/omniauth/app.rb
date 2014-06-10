require 'bundler'
Bundler.require

# enable :sessions

use Rack::Session::Cookie
use OmniAuth::Strategies::Developer


use OmniAuth::Builder do
  provider :instagram, 'df4910bcec8c47f5b6078fb012564c49', '6afb990b73d843b186f93f9762335f49'
end

get '/' do
  # @url = "https://instagram.com/oauth/authorize/?client_id=df4910bcec8c47f5b6078fb012564c49&redirect_uri=http://localhost:4567&response_type=code"
  erb :index
end

get '/auth/:provider/callback' do

end
