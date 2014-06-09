
require 'bundler/setup'
Bundler.require

use Rack::Session::Cookie
use OmniAuth::Strategies::Developer

use OmniAuth::Builder do
  provider :twitter, ENV['CONSUMER_KEY'], ENV['CONSUMER_SECRET']
end


get '/' do

end
