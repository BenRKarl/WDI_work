require 'bundler/setup'
Bundler.require

get '/' do

 erb :root

end

get '/receipt' do
  @service = params["wdr"]
  @cost = params["ff"]

erb: show
  end


  post '/receipt' do

service = params ["service_type"]

cost = $5,000,000

redirect "/receipt?wdr=#{service}&ff=#{flat_fee}"

  end

