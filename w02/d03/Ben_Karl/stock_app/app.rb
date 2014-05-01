require 'bundler/setup'
Bundler.require

def get_info(ticker)
  data = YahooFinance.quotes([ticker], [:symbol, :name, :open, :close])
  @opening = data[0].open
  @closing = data[0].close
  @name = data[0].name.gsub("\"", "")
  @symbol = data[0].symbol.gsub("\"", "")
end

def up_or_down
  if @opening > @closing
    @result_color = "lightgreen"
  else
    @result_color = "lightred"
  end
end

get "/" do
  erb :index
end

get '/stock' do
  ticker = params[:ticker]
  get_info(ticker)
  erb :show
end

post "/stock" do
  ticker = params[:ticker]
  redirect "/stock?ticker=#{ticker}"
end


