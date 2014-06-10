

require 'bundler'
Bundler.require

require_relative 'models/user'

use Rack::Session::Cookie
use OmniAuth::Builder do
  provider :twitter, 'key', 'secret'
end





get '/' do
  "hello world"
end
