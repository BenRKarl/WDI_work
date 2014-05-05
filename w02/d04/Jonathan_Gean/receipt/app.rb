require 'bundler/setup'
Bundler.require

get '/' do
  erb :index
end

post '/submit' do
  company_name = params[:company]
  service_name = params[:service]
  cost_amount = params[:cost]
  redirect "/printreceipt?company=#{company_name}&service=#{service_name}&cost=#{cost_amount}"
end

get '/printreceipt' do
  'receipt printed'
  erb :printreceipt
end
