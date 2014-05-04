require 'bundler/setup'
Bundler.require

get '/' do

  erb :index
end

post '/receipts' do
  company = params[:company]
  service = params[:service_provided]
  cost = params[:cost]
  File.open('receipts.txt', 'a') do |f|
  f.print("```\n- Company Name: #{company}\n- Good/Service Provided: #{service}\n- Cost: #{cost}\n- Thank you for your patronage\n```\n\n")
  company.gsub!(" ", "%20")
  service.gsub!(" ", "%20")
  cost.gsub!(" ", "%20")
  end
  redirect "/success?company=#{company}&service=#{service}&cost=#{cost}"

end

get '/success' do
  @company = params[:company]
  @service = params[:service]
  @cost = params[:cost]
  erb :success
end

get '/receipts' do
  File.open('receipts.txt', 'r') do |f|
  file = f.read
  @receipt_arr=file.split("\n\n")
  end
  erb :receipts
end
