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

get '/magic8ball' do
  @question = "Will It Snow Tomorrow?"
  @result = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely", "You may rely on it", "As I see it yes", "Most likely", "Outlook good", "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later", "Better not tell you now", "Cannot predict now", "Concentrate and ask again", "Don't count on it", "My reply is no", "My sources say no", "Outlook not so good", "Very doubtful"].sample
  erb :magic8ball
end

get '/rps/:player' do
  @player = params[:player]
  @computer = ["rock", "paper", "scissors"].sample
  @result = ["You Win!", "You Lose!", "You Tie!"].sample
  erb :rps
  #a weighted game.
end

