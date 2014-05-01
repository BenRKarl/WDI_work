require 'bundler/setup'
Bundler.require



get '/stock/:sym' do
  @stock = params[:sym].to_s

 data = YahooFinance.historical_quotes(@stock, Time::now-(24*60*60*10), Time::now)


 #binding.pry

  @length = data.length
  
  @close1 =  data[0].close.to_i
  #@date = data[0].trade_date
  
  
  #.open - was on data
 erb :ticker 
end