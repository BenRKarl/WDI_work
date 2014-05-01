require 'bundler/setup'
Bundler.require

def open_price(ticker)
  ticker = ticker
  data = YahooFinance.historical_quotes(ticker, Time::now-(24*60*60*10), Time::now)
  data[0].open
end

def close_price(ticker)
  ticker = ticker
  data = YahooFinance.historical_quotes(ticker, Time::now-(24*60*60*10), Time::now)
  data[0].close
end

def high(ticker)
  ticker = ticker
  data = YahooFinance.historical_quotes(ticker, Time::now-(24*60*60*10), Time::now)
  data[0].high
end

def low(ticker)
  ticker = ticker
  data = YahooFinance.historical_quotes(ticker, Time::now-(24*60*60*10), Time::now)
  data[0].low
end

get '/' do
  erb :index
end

post '/stock' do
  symbol = params[:ticker]
  redirect to("/stock/#{symbol}")
end

get '/stock/:symbol' do
  @symbol = params[:symbol]
  @open = open_price(@symbol)
  @close = close_price(@symbol)
  @high = high(@symbol)
  @low = low(@symbol)
  erb :show
end

