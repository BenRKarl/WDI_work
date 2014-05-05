require 'bundler/setup'
Bundler.require

get '/' do
  erb :root
end

post '/receipts' do
  erb :receipts
end
