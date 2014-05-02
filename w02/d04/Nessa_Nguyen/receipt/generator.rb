
#**Back/front-end challenge**:
#- A GET request '/receipts' should read from `receipts.txt` and display all receipts in an aesthetic way.

require 'bundler'
Bundler.require

require 'csv'

get '/' do
	erb :index
end


post '/receipts' do
	@company = params[:company]
	@goods = params[:item]
	@amount = params[:price]
	new_receipt = { :company => @company, :goods => @goods, :amount => @amount }
	@receipt_array = []
	new_receipt.each do |k,v|
		@receipt_array << "#{k}: #{v}"
	end			
	
	file = File.open('receipts.txt', 'w') do |file|
		file.puts @receipt_array.join(" ") 
	end	

	redirect '/receipts'
end

	
get '/receipts' do
#	file = File.open('receipts.txt', 'r')
#	file.read
#	@text = file.rewind
#	file.close 
	erb :show
end












