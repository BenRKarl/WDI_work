require 'bundler/setup'
Bundler.require

get '/' do
  erb :index
end

get '/stock/:ticker' do
  timer = params[:ticker]
  data = YahooFinance.historical_quotes("goog", Time::now-(24*60*60*10), Time::now)
  @d1 = data[0].open
  @d2 = data[1].open
end

post '/company' do
  comp_name = params[:company_name].gsub(' ', '%20')
  redirect '/company?stock_name='+comp_name
# redirect "/names?being_name=#{person_name}"
end

get '/company' do
  @name = params[:stock_name]
  data = YahooFinance.historical_quotes(@name, Time::now-(24*60*60*10), Time::now)
  @d1 = data[0].open
  @d2 = data[1].open
  @d3 = data[2].open
  @d4 = data[3].open
  @d5 = data[4].open
  @d6 = data[5].open
  @d7 = data[6].open
  erb :opening_10d
end
