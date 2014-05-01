require 'bundler/setup'
Bundler.require

get '/stock' do
  erb :index
end

post '/stock' do
  ticker = params[:stock_symbol]
  puts ">>>"
  puts params.inspect
  data = YahooFinance.historical_quotes(ticker, Time::now-(24*60*60*10), Time::now)
  data[0].open
  # puts ">>>"
  # puts @a[:close]
  # erb :index
end


