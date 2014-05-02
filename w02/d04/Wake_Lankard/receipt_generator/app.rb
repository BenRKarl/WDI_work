require 'bundler/setup'
Bundler.require

get '/' do 
  #show form

  erb :index
end

post '/receipts' do
  #write a receipt to receipts.txt
  company_name = params[:company_name]
  company_type = params[:company_type]
  amount = params[:amount]

  File.open('myfile.out', 'a') { |f|
    f.puts "#{company_name}|#{company_type}|#{amount}\n"
  }


end

get '/receipts' do
  #read from receipts.txt

end