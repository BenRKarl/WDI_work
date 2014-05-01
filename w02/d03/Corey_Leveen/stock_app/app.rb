require 'bundler/setup'
Bundler.require

get '/' do
erb :index
end

post '/submit' do
  stock_ticker = params[:ticker]
  redirect "/stock?quote=#{stock_ticker}"
end

get '/stock' do
  #@ticker = params[:quote]
 def finance(quote)
  data = YahooFinance.historical_quotes(quote, Time::now-(24*60*60*10), Time::now)
 show_it = data[0].join
 puts "#{show_it}"
 end


end
