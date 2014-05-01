require 'bundler/setup'
Bundler.require

get '/' do 
  erb :index
end

post '/receipts' do 
  company = params[:company]
  goods = params[:goods]
  cost = params[:cost]
  r = File.open("files/receipts.txt", "w")
  receipt = r.write("- Company Name: #{company}\n- Good/Service Provided: #{goods}\n- Cost: #{cost}\n- Thank you for your patronage\n")
  r.close
  
  erb :receipts
end
