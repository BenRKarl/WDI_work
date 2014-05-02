require 'bundler/setup'
Bundler.require

get '/' do 
  erb :index
end

post '/receipts' do 
  company = params[:company]
  goods = params[:goods]
  cost = params[:cost]
  receipt_write = File.open("files/receipts.txt", "w")
  receipt_write.write("- Company Name: #{company}\n- Good/Service Provided: #{goods}\n- Cost: #{cost}\n- Thank you for your patronage\n")
  receipt_write.close
  receipt_read = File.open("files/receipts.txt", "r")
  @r = receipt_read.readlines
  
  erb :receipts
end
