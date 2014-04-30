require 'bundler/setup'
Bundler.require


get '/' do
  #welcome page
end



get '/stock' do 
  @ticker = params[:ticker]
  @price = params[:price]

  erb :index
end

post '/stock' do
  ticker = params[:ticker]
  data = YahooFinance.historical_quotes(ticker, Time::now-(24*60*60*10), Time::now)
  price = data[0].open
  redirect '/stock?ticker=' + ticker + '&price=' + price
end