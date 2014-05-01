require 'bundler/setup'
Bundler.require

get '/' do
erb :index
end

post '/submit' do
  stock_ticker = params[:ticker]
  redirect "/stock?quote=#{stock_ticker}"
end

get '/stock' do
   quoter = params[:quote]
   def finance(quoter)
    data = YahooFinance.historical_quotes(quoter, Time::now-(24*60*60*10), Time::now)
    @string = data[0]
   end
   erb :show
end
