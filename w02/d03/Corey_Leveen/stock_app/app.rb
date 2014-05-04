require 'bundler/setup'
Bundler.require

get '/' do
erb :index
end


def finance(something)
 data = YahooFinance.historical_quotes(something, Time::now-(24*60*60*10), Time::now)
 data[0]
end


post '/stocks' do
  stock_ticker = params[:ticker]
  redirect "/stocks?ticker=#{stock_ticker}"
end

get '/stocks' do
   ticker = params[:ticker]
   @obj = finance(ticker)
   erb :show
end
