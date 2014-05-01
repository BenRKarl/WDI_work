require 'bundler/setup'
Bundler.require


get '/' do 
	erb :index
end

get '/stock/:ticker' do 
  # Test cases:
  # put in the URL ==> http://localhost:4567/stock/goog
  # put in the URL ==> http://localhost:4567/stock/aapl
  # put in the URL ==> http://localhost:4567/stock/fb

  ticker = params[:ticker]
  stock_data = stock_info(ticker)

  opening_price = stock_data["opening_price"]	
  highest_price = stock_data["highest_price"]

  redirect "/stock?sym=#{ticker}&op=#{opening_price}&hp=#{highest_price}"  
end

post '/stock' do	
	ticker = params["stock_symbol"]
	stock_data = stock_info(ticker)

	opening_price = stock_data["opening_price"]	
	highest_price = stock_data["highest_price"]

	# redirect '/stock?sym='+ticker+'&op='+opening_price+'&hp='+highest_price
	redirect "/stock?sym=#{ticker}&op=#{opening_price}&hp=#{highest_price}"
end

get '/stock' do 
	@date_info = Time::now
	@stock_ticker = params["sym"]
	@opening_price = params["op"]
	@highest_price = params["hp"]

	erb :show
end

def stock_info(ticker)
	stock_data = {}

 	data = YahooFinance.historical_quotes(ticker, Time::now-(24*60*60*10), Time::now)

  	stock_data["opening_price"] = data[0].open
	stock_data["highest_price"] = data[0].high

	stock_data
end

