require 'bundler/setup'
Bundler.require

get '/' do
  erb :index
end

get '/stock' do

  @ticker = params["sym"]
  @opening_price = params["op"]
  @highest_price = params["hp"]

  erb :show
end


post '/tickers' do
  ticker = params["ticker_name"]
  # data = YahooFinance.historical_quotes(ticker, Time::now-(24*60*60*10), Time::now)

  opening_price = 65.50 # data[0].open
  highest_price = 70.50 # data[0].high

  redirect "/stock?sym=#{ticker}&op=#{opening_price}&hp=#{highest_price}"



end
