require 'bundler/setup'  
Bundler.require          

get '/' do 
  erb :index
end

post '/stocks' do
  query = params.map do |key, value|  "#{key}=#{value}"
  end.join("&")
  redirect "/stocks?#{query}"
end

get '/stocks' do
  @ticker = params["stock_name"] 
end

# post '/stocks' do
#   ticker_name = params[:stock_name]
#   redirect "/stocks?stock_report=#{ticker_name}"
#   erb :show
# end


get '/stocks' do
  ticker = params[:ticker_name]
  data   = YahooFinance.historical_quotes(ticker_name, Time::now-(24*60*60*10)
  print_data =  data[0].symbol + " value is: " + data[0].ask
  erb: show
end




