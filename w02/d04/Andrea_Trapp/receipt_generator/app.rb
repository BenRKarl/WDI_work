require 'bundler/setup'
Bundler.require

get '/' do 
	erb :root	
end

post '/receipts' do	
	company = params["company"]
	service = params["service"]
	cost = params["cost"]

	create_receipt(company, service, cost)
	redirect "/message"
end

get '/message' do
	erb :message
end

get '/receipts' do 	
	@receipts = get_receipts
	erb :show
end

def create_receipt(company, service, cost)
	receipt = ""
	receipt += "Company Name: #{company}\n" 
	receipt += "Good/Service Provided: #{service}\n"
	receipt += "Cost: $#{cost}\n"
	receipt += "Thank you for your patronage\n\n"

	print_receipt(receipt)
end

def print_receipt(receipt)
	fname = "receipt.txt"
	f = File.open(fname, "a")
	f.puts receipt
	f.close	
end

def get_receipts
	fname = "receipt.txt"
	f = File.open(fname, "r")	
	text = f.readlines
	f.close	
	text
end