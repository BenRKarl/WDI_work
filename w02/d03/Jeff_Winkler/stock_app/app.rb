require 'bundler/setup'
Bundler.require


def obtain_stock_data(ticker)
  YahooFinance.historical_quotes(ticker, Time::now-(24*60*60*10), Time::now)
end

get '/' do
  erb :index
end

post '/stocks' do
  ticker = params["ticker"]
  redirect "/stock/"+ticker
end

get '/stock/:ticker' do
  @ticker = params[:ticker]
  @data = []
  prices = []

  stockinfo = obtain_stock_data(@ticker).reverse

  stockinfo.each do |day|
    prices << day.close.to_f
  end

  prices.sort!
  lowrange = 0.98 * prices.first
  highrange = 1.02 * prices.last

  stockinfo.each do |day|
    currhash = {}
    currhash[:close] = day.close.to_f
    currhash[:date] = day.trade_date[5, day.trade_date.length-5]
    currhash[:height] = ((day.close.to_f - lowrange)/(highrange - lowrange))*240
    currhash[:offset] = 240-currhash[:height]
    @data << currhash
  end


  erb :show
end
