require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :games
end

get '/toss' do
  @result = ['heads', 'tails'].sample
  erb :toss
end

get '/dice_roll' do
  @roll = [1, 2, 3, 4, 5, 6].sample
  erb :roll
end

get '/rock' do
  rps_choice = ['rock','paper','scissors'].sample
  @rps_choice = rps_choice
  if rps_choice == 'scissors'
    @conclusion = 'win'
  elsif rps_choice == 'rock'
    @conclusion = 'draw'
  elsif rps_choice == 'paper'
    @conclusion = 'lose'
  end
  erb :rock
end

get '/paper' do
  rps_choice = ['rock','paper','scissors'].sample
  @rps_choice = rps_choice
  if rps_choice == 'scissors'
    @conclusion = 'lose'
  elsif rps_choice == 'rock'
    @conclusion = 'win'
  elsif rps_choice == 'paper'
    @conclusion = 'draw'
  end
  erb :paper
end

get '/scissors' do
  rps_choice = ['rock','paper','scissors'].sample
  @rps_choice = rps_choice
  if rps_choice == 'scissors'
    @conclusion = 'draw'
  elsif rps_choice == 'rock'
    @conclusion = 'lose'
  elsif rps_choice == 'paper'
    @conclusion = 'win'
  end
  erb :rock
end

get '/magic8ball/:question' do
  # {question: "will i get married today?"}
  #  params[:question]
  @question = params[:question]
  @magic8balloutcome = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely", "You may rely on it", "As I see it yes", "Most likely", "Outlook good", "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later", "Better not tell you now", "Cannot predict now", "Concentrate and ask again", "Don't count on it", "My reply is no", "My sources say no", "Outlook not so good", "Very doubtful"].sample
  erb :magic8ball
end
