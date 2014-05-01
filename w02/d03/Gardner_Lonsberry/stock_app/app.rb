require 'bundler/setup'  
Bundler.require          

get '/' do 
  erb :index
end

post '/stocks' do
  ticker = params[:ticker]
  redirect "/stocks?query=#{ticker}"
  erb :show
 end

# post '/stocks' do
#   query = params.map do |ticker1, ticker2|  "#{ticker1}=#{ticker2}"
#   redirect "/stocks/query?=#{ticker}"
# end


get '/stocks/query?=#{ticker}' do
def finance(ticker)
  data = YahooFinance.historical_quotes(ticker, Time::now-(24*60*60*10), Time::now)
  data[0].open
  erb :index
 end
end




