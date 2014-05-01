require 'bundler/setup'
Bundler.require

get '/' do
	erb :root
	
end

post '/submit' do # in order to use post here the form needs ' method="post" '
	# params is a hash with one element
	# e.g. {"greeting" => "Help me please", "salutation" => "bla bla bla"}
	# query will be a string      "greeting=Help me please&salutation=bla bla bla"

	query = params.map do |key, value|
		"#{key}=#{value}"
	end.join("&")
	
	redirect "/success?#{query}"
end

get '/success' do
	#binding.pry
	@message = params["message"]
	erb :success

end
