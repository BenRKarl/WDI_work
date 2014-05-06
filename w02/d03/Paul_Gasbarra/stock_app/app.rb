require 'bundler/setup'
Bundler.require

get '/' do
  erb :index
end

post '/artist' do
  ticker_stock = params[:ticker]

  redirect "/stock?ticker_name=#{ticker_stock}"
end

get '/stock' do
  ticker = params[:ticker_name]
  data = YahooFinance.historical_quotes(ticker, Time::now-(24*60*60*10), Time::now)
  @symbol = data[0].symbol
  @open = data[0].open
  @high = data[0].high
  @low = data[0].low
  @close = data[0].close
  @date = data[0].trade_date

  erb :show
end
