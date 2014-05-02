require 'bundler/setup'
Bundler.require

get '/' do 
	erb :root	
end

post '/receipts' do	
	company = params["company"]
	service = params["service"]
	cost = params["cost"]

	redirect "/receipts?company=#{company}&service=#{service}&cost=#{cost}"
end

get '/receipts' do 
	
	@company = params["company"]
	@service = params["service"]
	@cost = params["cost"]

	erb :show
end