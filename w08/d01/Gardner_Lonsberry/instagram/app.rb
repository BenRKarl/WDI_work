require 'bundler'
Bundler.require

use Rack::Session::Cookie
use OmniAuth::Builder do
  provider :instagram, 'fef2fced51f64c8ebc0c599e63daccf0','d29b980ec4754a0d93bdf8919c47706e'
    end

use OmniAuth::Builder do
  provider :twitter, '6sCmu0xqmi7KGRmK3f0Pcv1TG', 'CDXBzy60IZL1cEXwsj8AHsB3CH6DEkSrFwM4kUFYg7eK8YM5wM'
end

  get '/' do
    erb :index
  end 


  get '/auth/instagram' do
    erb :index
  end

get '/auth/:provider/instagram/' do
  erb :welcome
end


