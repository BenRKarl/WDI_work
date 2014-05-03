require 'bundler/setup'
Bundler.require

def rand_char
	(('A'..'F').to_a + (0..9).to_a).sample
end

def rand_hex_color
	6.times.map{rand_char}.join
end

# def rand_col
# 	255.to_s(16)
# end

def generate_compliment
	greetings = ["Mornin!","How are you?","Good to see you."]
	compliments = ["What a nice outfit!!","You look cool today!","You are sooo sweet."]

	@random_color = rand_hex_color
	@greeting = greetings.sample
	@compliment = compliments.sample	
end

get '/' do 
	generate_compliment

	erb :compliment
end

post '/names' do 
	#name = params["name"].gsub(" ","%20")
	name = params[:name].gsub(" ","%20")
	redirect "/names?name=#{name}"	
end

get '/names' do 		
	#@name = params["name"]
	@name = params[:name]
	generate_compliment

	erb :compliment
end


