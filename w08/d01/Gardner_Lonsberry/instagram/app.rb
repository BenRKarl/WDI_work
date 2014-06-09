require 'bundler'
Bundler.require

use Rack::Session::Cookie
use OmniAuth::Builder do
  provider :instagram, 'fef2fced51f64c8ebc0c599e63daccf0','d29b980ec4754a0d93bdf8919c47706e'
    end


  get '/' do
    erb :index
    

  get '/auth/instagram' do
    erb :index
  end


