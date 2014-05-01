require 'bundler/setup'
Bundler.require

get '/' do
  erb :index
end

post '/submit' do
  ticker_name = params[:stock]
  redirect "/stock?stock_name=" + ticker_name
end

get '/stock' do
  @ticker = params[:stock_name]
  erb :stock
end
