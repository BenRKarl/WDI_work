require 'bundler/setup'
Bundler.require


get '/' do
	erb :root
end

post '/submit' do
	query = params.map do |key, value|
		"#{key}=#{value}"
	end.join("&")

redirect "/success?#{query}"
end

get '/success' do
	@message = params[:message]
	binding.pry
	erb :success
	
end