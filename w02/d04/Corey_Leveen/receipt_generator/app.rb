require 'bundler/setup'
Bundler.require

get '/' do
  erb :index
end

post '/receipts' do
  @company_name = params[:company]
  @good_service = params[:gsprovided]
  @cost_due = params[:cost]

  fname = "receipts.txt"
receipt = File.open(fname, "w")
receipt.puts "Company Name: #{@company_name},
              Good or Service: #{@good_service}
              Cost: #{@cost_due}
              Thank you."
receipt.close
binding.pry
  redirect '/receipts'
end

get '/receipts' do
  erb :show
end
