require 'bundler/setup'
Bundler.require

get '/' do
  erb :index
end

post '/receipts' do
  
  redirect '/Confirmation_page'
  erb :shows
end

get '/receipts/:profile' do
  @name = params[:name]
  @append = append_receipt
  erb :shows
end

