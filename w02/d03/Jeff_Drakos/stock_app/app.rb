require 'bundler/setup'
Bundler.require

def stock_info(ticker)
  data = YahooFinance.quotes([ticker], [:symbol, :name, :open, :close])
  @symbol = data[0].symbol.gsub(' ', '%20')
  @name = data[0].name.gsub(' ', '%20')
  @open = data[0].open
  @close = data[0].close
  erb :show
end

get '/' do
erb :index
end

get '/stock' do
  ticker = params[:ticker]
  get_info(ticker)
  erb :show
end

post '/stock' do
  ticker = params[:ticker]
  redirect "/stock?ticker=#{ticker}"
end
