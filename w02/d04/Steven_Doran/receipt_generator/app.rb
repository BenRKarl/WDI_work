require 'bundler/setup'
Bundler.require

get '/' do 
  erb :index
end

def write
  company = params[:company]
  goods = params[:goods]
  cost = params[:cost]
  receipt_write = File.open("files/receipts.txt", "w")
  receipt_write.write("- Company Name: #{company}\n- Good/Service Provided: #{goods}\n- Cost: #{cost}\n- Thank you for your patronage\n")
  receipt_write.close
end

def read
  receipt_read = File.open("files/receipts.txt", "r")
  @r = receipt_read.readlines
  receipt_read.close
end


post '/receipts' do 
  write
  read
  erb :receipts
end
