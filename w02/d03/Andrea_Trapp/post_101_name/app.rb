require 'bundler/setup'
Bundler.require	

get '/' do 
	erb :index
end

post '/names' do 

	person_name = params[:user_name]

	redirect '/names?being_name=' + person_name
	# redirect "/names?being_name=#{person_name}"



	# puts "I am a friendly string"
	# binding.pry
	# puts "I am also a super nice string"
end


get '/names' do 
	@name = params[:being_name]
	erb :show
end