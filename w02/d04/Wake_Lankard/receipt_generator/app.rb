require 'bundler/setup'
Bundler.require

get '/' do 
  #show form
  @message = ""
  erb :index
end

post '/receipts' do
  #write a receipt to receipts.txt
  company_name = params[:company_name]
  company_type = params[:company_type]
  amount = params[:amount]
  @message =""

  File.open('assets/receipts.txt', 'a') { |f|
    f.puts "#{company_name}|#{company_type}|#{amount}"
  }

  erb :index

end

get '/receipts' do
  #read from receipts.txt
  @receipts = get_text('assets/receipts.txt')

  erb :show

end

def get_text(filename)
  f = File.open(filename, 'r')
  text_arr = f.readlines
  f.close
  text_arr
end