require "bundler/setup"
Bundler.require

get "/" do
  erb :index
end

post '/receipts' do
  company_name = params[:company_name]
  goods = params[:goods]
  price = params[:cost]
  receipts_file = File.open('receipts.txt', 'a')
  receipts_file.puts "Company Name: #{company_name}"
  receipts_file.puts "Good/Service Provided: #{goods}"
  receipts_file.puts "Cost: #{costs}"
  receipts_file.puts "thanks for shopping with us."
  receipts_file.puts ""
  receipts_file.close
  redirect '/thank_you'
end

get '/thank_you' do
  erb :receipt
end
