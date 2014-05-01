require 'bundler'
Bundler.require



get '/' do
  erb :index
end

post '/stocks' do
  ticker_name = params[:ticker]
  #{ ticker_name => :ticker value }
  redirect "/stocks?symbol=#{ticker_name}"
end

def get_stock(ticker)
	data = YahooFinance.historical_quotes(ticker, 
				 Time::now-(24*60*60*10), Time::now)
	#value = data[0].open
	value_array = data.map { |entry| entry.open.to_i }
end		

get '/stocks' do 
  @ticker = params[:symbol]
  @value = get_stock(@ticker) 
	erb :show
end
