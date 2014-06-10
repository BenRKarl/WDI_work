
require 'bundler/setup'
Bundler.require

use Rack::Session::Cookie
use OmniAuth::Strategies::Developer

use OmniAuth::Builder do
  provider :twitter, ENV['CONSUMER_KEY'], ENV['CONSUMER_SECRET']
end


get '/' do
'test'
end

get '/auth/twitter/callback' do
"ROOOOOAAAAR ur In!"    
end
