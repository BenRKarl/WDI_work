require 'bundler'
Bundler.require

def 
	
end

def 
	
end

get '/' do      

compliment = ["You look awesome", "Don't take a shower, it's
more natural.", "You're not as short as you look."]

@compliments = compliment.sample
@color = 

erb :compliment


end 

post '/names' do 
	name = params[:name].gsub(" ", "%20")
	redirect "/names?name=#{name}"
end 

get '/names' do 
	@name = params[:name]
	@compliment = compliments.sample
	@color = rand_hex_color

	erb :compliment
end 