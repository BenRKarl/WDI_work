require 'bundler/setup'
Bundler.require

get '/' do
  erb :index
end

post '/receipts' do
  receipt = File.new("receipt.txt","w")

  receipt.close
  redirect "/print"
end

get '/prit'
  erb :print
end

get '/receipts' do
  File.open("receipt.txt", "r")
  File.read
end
