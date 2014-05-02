require 'bundler/setup'
Bundler.require

get '/' do
  erb :root
end

post '/receipts' do
  company_name = params[:company_name]
  goods = params[:goods]
  price = params[:price]
  receipts_file = File.open('receipts.txt', 'a')
  receipts_file.puts "Company Name: #{company_name}"
  receipts_file.puts "Good/Service Provided: #{goods}"
  receipts_file.puts "Cost: #{price}"
  receipts_file.puts "Thank you for your patronage."
  receipts_file.puts ""
  receipts_file.close
  redirect '/thank_you'
end

get '/thank_you' do
  erb :receipt
end
