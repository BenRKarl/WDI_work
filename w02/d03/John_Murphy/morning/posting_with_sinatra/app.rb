require 'bundler/setup'
Bundler.require

get '/' do
  erb :root
end

post '/submit' do
  query = params.map do |k,v|
    "#{k}=#{v}"
  end.join("&")

  redirect "/success?#{query}"
end


get '/success' do
  @message = params["message"]
  erb :success
end
