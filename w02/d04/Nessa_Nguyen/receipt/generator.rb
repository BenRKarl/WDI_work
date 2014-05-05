
#**Back/front-end challenge**:
#- A GET request '/receipts' should read from `receipts.txt` and display all receipts in an aesthetic way.

require 'bundler'
Bundler.require


get '/' do
	erb :index
end


post '/receipts' do
	@company = params[:company]
	@goods = params[:item]
	@amount = params[:price]
	new_receipt = { "Company" => @company, "Good or Service" => @goods, "Amount" => @amount }
	@receipt_array = []
	
	new_receipt.each do |k,v|
		@receipt_array << "#{k}: #{v}"
	end			
	
	file = File.open('receipts.txt', 'a') do |file|
		file.puts @receipt_array.join(". ") 
	end	

	redirect '/receipts'
end

	
get '/receipts' do
	@file = File.open('receipts.txt', 'r')
  #@text = file.read
	#@file.each_line do |line|
	#	@text += line
	#end
	erb :show
end












