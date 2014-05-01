
require 'bundler/setup'
Bundler.require

get '/' do
  erb :index
end

post '/receipts' do

  "#{params}"

  #redirect "/receipts"
end

get '/receipts' do
  "hello"
end

