# encoding: utf-8
require 'bundler/setup'
Bundler.require

get '/' do
  erb :index
end

get '/stock/:ticker' do
  ticker = params[:ticker]
  data = YahooFinance.historical_quotes(ticker, Time::now-(24*60*60*10), Time::now)
  @stock_info = data[0].open
  erb :show
end

post '/stock' do
  symbol = params[:symbol]
  redirect "/stock/#{symbol}"
end

get '/stock' do
  @tick = params[:tick]
  erb :show
end

# query = params.map do |key, value|
#    "#{key}=#{value}"
#   end.join("&")
#   redirect "/show?#{query}"

# post '/names' do
#   person_name = params[:user_name]
#   redirect "/names?being_name=#{person_name}"
# end

# get '/names' do
#   @name = params[:being_name]
#   erb :show
# end

# def stock_info
#   my_colors = HTTParty.get('http://www.colourlovers.com/api/palettes/random')
#   title = my_colors['palettes']['palette']['title']
#   colors = my_colors['palettes']['palette']['colors']['hex']
#   {:title => title, :colors => colors}
# end

