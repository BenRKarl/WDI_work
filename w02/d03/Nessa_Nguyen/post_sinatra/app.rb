require 'bundler/setup'
Bundler.require



get '/' do
  erb :root
end  


post '/submit' do
  query = params.map do |key, value|
  	"#{key}=#{value}".gsub(" ","_")
  end.join("&")	
  redirect "/success?#{query}"
end

get '/success' do
  @name = params["name"]	
  @message = params["message"].gsub("_"," ")	
  erb :success
end  
