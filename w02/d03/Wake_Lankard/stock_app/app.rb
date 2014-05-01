require 'bundler/setup'
Bundler.require


get '/' do
  @ticker = ""
  @price = ""
  @volume_arr = []

  erb :index
end

#I could only get the array to the index.erb with the post method.  
#I tried to put the values in the query string in the get method, but couldn't work it out.

# get '/stock' do 
#   @ticker = params[:ticker]
#   @price = params[:price]

#   erb :index
# end

post '/stock' do

  @volume_arr = []

  @ticker = params[:ticker]
  data = YahooFinance.historical_quotes(@ticker, Time::now-(24*60*60*10), Time::now)
  @price = data[0].open
  volume_coef = data[0].volume.to_i / 100

  data.each { |x| @volume_arr << x.volume.to_i / volume_coef }

  erb :index
  
end