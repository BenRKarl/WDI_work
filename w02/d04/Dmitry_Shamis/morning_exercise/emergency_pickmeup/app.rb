require 'bundler/setup'
Bundler.require

def compliment
  compliments = ["Well aren't you a sight for sore eyes!",
    "You're looking gorgeous today!",
    "Look at the eyes on you!",
    "Wow, just wow!",
    "Have you been working out?",
    "Chiseled by the hands of the gods!",
    "Wowaweewa!",
    "Where can I get that shirt?",
    "Do you wake up looking that good?",
    "O-M-G!",
    "Oh damn!",
    "Wu-Tang is for the children!"]
  compliments.sample
end

def rand_char
  arr = (('A'..'F').to_a + (0..9).to_a).sample
end

def rand_hex
  6.times.map{rand_char}.join
end

get '/' do
  @color = rand_hex
  erb :compliment
end

post '/names' do
  user_name = params[:user_name].gsub(' ', '%20')
  redirect "/names?name=#{user_name}"
end

get '/names' do
  @name = params[:name]
  @compliment = compliment
  @color = rand_hex
  erb :compliment
end
