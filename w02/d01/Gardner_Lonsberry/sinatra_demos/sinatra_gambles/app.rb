require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :games
end

get '/toss' do
  @result = ['Heads', 'Tails'].sample
  erb :toss
end

get '/dice_roll' do
  @dice_result = rand(6)+1
  erb :dice_roll
end

get '/magic_8ball' do
  array = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
    "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
    "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
    "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
    "Don't count on it", "My reply is no", "My sources say no",
    "Outlook not so good", "Very doubtful"]
  @result = array.sample
    erb :magic_8ball
end





get '/rps/:rock_result' do
  @rock_result = params[:rock_result]
  erb :rock_result
end

get '/rps/:paper_result' do
  @paper_result = params[:paper_result]
  erb :rps
end

get 'rps/scissors_result' do
  @scissors_result =params[:scissors_result]
  erb :rps
end


