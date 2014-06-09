require 'bundler'
Bundler.require

require 'sinatra'
require 'omniauth'





get '/' do
  erb :index

  #redirect "https://api.instagram.com/oauth/authorize/?client_id=87fe1bf82ae54fd794e4867066e88ff1&redirect_uri=http://localhost:4567/callback&response_type=code"

end

get '/callback' do
  erb :callback
end
