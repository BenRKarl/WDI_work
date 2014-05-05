require 'bundler/setup'
Bundler.require

def rand_char
  (('A'..'F').to_a + (0..9).to_a).sample
end

def rand_hex_color
  6.times.map{rand_char}.join
end

def compliment
  [ "What lovely hands you have.", "Chin up, it can't get any worse", "You look good in pants.", "I know you were concerned but your hair looks great like that.", "You're neat and I like you."].sample
end

get '/' do 
  @color = rand_hex_color
  erb :index
end

post '/names' do 
  name = params[:name].gsub(" ", "%20")
  redirect "/names?name=#{name}"
end

get '/names' do
  @name = params[:name]
  @compliment = compliment
  @color = rand_hex_color 
  erb :index
end