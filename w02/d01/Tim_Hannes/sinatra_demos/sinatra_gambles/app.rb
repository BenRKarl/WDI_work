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
  @result = rand(6)+1
  erb :dice_roll
end

get '/snow_tomorrow' do
  @result = ['It is certain', 'It is decidedly so', 'Without a doubt', 'Yes definitely', 'You may rely on it', 'As I see it yes', 'Most likely', 'Outlook good', 'Yes', 'Signs point to yes', 'Reply hazy try again', 'Ask again later', 'Better not tell you now', 'Cannot predict now', 'Concentrate and ask again', 'Dont count on it', 'My reply is no', 'My sources say no', 'Outlook not so good', 'Very doubtful'].sample
  erb :snow_tomorrow
end

get '/rps/rock' do
  @result = ['The computer chose scissors. You win!']
  erb :rock
end

get '/rps/scissors' do
  @result = ['The computer chose rock. You lose!']
  erb :scissors
end