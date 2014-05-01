require 'bundler/setup'
Bundler.require

get '/' do 
  erb :index
end

post '/stocks' do 
  ticker = params[:ticker]
  redirect "/stocks?ticker=#{ticker}"
end


get '/stocks' do 
  ticker = params[:ticker]
  data = YahooFinance.quotes([ticker], [:symbol, :ask, :name])
  @symbol = data[0].symbol
  @value = data[0].ask
  @name = data[0].name
  erb :show
end