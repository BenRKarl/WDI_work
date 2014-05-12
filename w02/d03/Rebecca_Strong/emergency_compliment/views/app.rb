require 'bundler/setup'
Bundler.require

def rand_char
(('A'..'F').to_a + (0..9).to_a).sample
end

def rand_hex_color
  6.times.map{rand_char}.join
end

get '/' do


    @compliment = compliments.sample
    @color = rand_hex_color
  erb :show
end

compliments = [
    "You look great!",
    "Don't worry, nobody saw!",
    "You won't remember in the morning!"]

post '/names' do
name = params[:name].gsub(" ","%20")

redirect "/names?name=#{the_name_from_params}"

erb :index
  end

  get '/names' do
   @name = params[:name]
   @compliment = compliments.sample
   @color = rand_hex_color
  end

