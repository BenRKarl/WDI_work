require 'bundler/setup'
Bundler.require

get '/' do 
  erb :index
end 

get '/stock' do 
	ticker = params[:ticker]
	data = stock_data(ticker)
	binding.pry
end 

def stock_data(ticker)
	YahooFinance.historical_quotes(ticker, Time::now-(24*60*60*10),Time::now)
end



