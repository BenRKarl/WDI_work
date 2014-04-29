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
  @result = rand(1..6)
  erb :dice_roll
end

get '/magic8ball' do
  @result = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
    "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
    "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
    "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
    "Don't count on it", "My reply is no", "My sources say no",
    "Outlook not so good", "Very doubtful"].sample
    erb :"magic8ball"
end

a = "rock beats scissors"
b = "scissors beat paper"
c = "paper eats rock"

get '/rps/throw'                        # first option you throw rock, ai randoms 3 cases
  @throw = params[:throw]               #
  @result = [].sample                   # second option you throw scissors, ai randoms 3 cases
  erb :rps                              #
end                                     #


