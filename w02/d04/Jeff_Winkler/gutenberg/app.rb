
require 'bundler/setup'
Bundler.require


get '/' do
  erb :root
end




get '/random' do
  "hello"
end


