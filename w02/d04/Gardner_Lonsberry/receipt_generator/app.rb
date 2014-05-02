require 'bundler/setup'
Bundler.require



def append_receipt
  open('receipts.txt', 'a') { |f|
  f << "Company name: <%= @company %>\n"
  f << "Service: #{@cost}\n"
  f << "Cost:\n"
}
end

get '/' do
  erb :index
end

post '/receipts' do
  @append = append_receipt
  erb :shows
end

post '/receipts' do
@profile = params[:profile]
  redirect "/names?name=#{name}"

get '/receipts'


get '/receipts/:profile' do
  @name = params[:profile]
  @append = append_receipt
  erb :shows
end
end


