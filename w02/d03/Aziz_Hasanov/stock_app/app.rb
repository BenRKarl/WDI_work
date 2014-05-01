require "bundler/setup"
Bundler.require

get '/' do
	erb :index
end

post '/ticker_info' do
	@new_ticker = params[:ticker].upcase
	redirect "/ticker_info/#{@new_ticker}"
end

def stock_data
	api_fetch = YahooFinance.historical_quotes("#{@new_ticker}", Time::now-(24*60*60*10), Time::now)
	# api_fetch[0].open
end

# binding.pry

get '/ticker_info/:ticker' do
	@info = stock_data
	erb :show
end