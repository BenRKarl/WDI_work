require 'bundler/setup'
Bundler.require



get '/' do
  erb :index
end

post '/stocks' do
  ticker = params[:ticker]
  data = YahooFinance.historical_quotes(ticker, Time::now-(24*60*60*10), Time::now)
  #data provides something like this:
#   [
#     [0] #<OpenStruct symbol="goog", trade_date="2014-04-29", open="516.90", high="529.46", low="516.32", close="527.70", volume="2691700", adjusted_close="527.70">,
#     [1] #<OpenStruct symbol="goog", trade_date="2014-04-28", open="517.18", high="518.60", low="502.80", close="517.15", volume="3326400", adjusted_close="517.15">,
#     [2] #<OpenStruct symbol="goog", trade_date="2014-04-25", open="522.51", high="524.70", low="515.42", close="516.18", volume="2094600", adjusted_close="516.18">,
#     [3] #<OpenStruct symbol="goog", trade_date="2014-04-24", open="530.07", high="531.65", low="522.12", close="525.16", volume="1878000", adjusted_close="525.16">,
#     [4] #<OpenStruct symbol="goog", trade_date="2014-04-23", open="533.79", high="533.87", low="526.25", close="526.94", volume="2046700", adjusted_close="526.94">,
#     [5] #<OpenStruct symbol="goog", trade_date="2014-04-22", open="528.64", high="537.23", low="527.51", close="534.81", volume="2358900", adjusted_close="534.81">,
#     [6] #<OpenStruct symbol="goog", trade_date="2014-04-21", open="536.10", high="536.70", low="525.60", close="528.62", volume="2559700", adjusted_close="528.62">
# ]
  day_and_close = {}
  day_and_close = data.each {|i| day_and_close[i.trade_date]=i.close}
  redirect "/stocks?ticker=#{ticker}&ticker_open=#{data[0].open}"


end

get "/stocks" do
  @open=params[:ticker_open]
  @ticker=params[:ticker]

erb :show
end



