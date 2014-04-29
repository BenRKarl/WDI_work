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
  eightball_arr = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
    "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
    "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
    "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
    "Don't count on it", "My reply is no", "My sources say no",
    "Outlook not so good", "Very doubtful"]
  @result = eightball_arr.sample
  erb :magic8ball
end

get '/scissors' do
  computer = ['rock', 'paper', 'scissors'].sample
  @result = rock_paper_scissors(computer, 'scissors')
  erb :scissors
end

get '/paper' do
  computer = ['rock', 'paper', 'scissors'].sample
  @result = rock_paper_scissors(computer, 'paper')
  erb :paper
end

get '/rock' do
  computer = ['rock', 'paper', 'scissors'].sample
  @result = rock_paper_scissors(computer, 'rock')
  erb :rock
end

def rock_paper_scissors(computer, player)
  if computer == 'scissors' && player == 'scissors'
    "The computer chose scissors. It's a tie."
  elsif computer == 'scissors' && player == 'paper'
    "The computer chose scissors. You lose!"
  elsif computer == 'scissors' && player == 'rock'
    "The computer chose scissors. You win!"
  elsif computer == 'paper' && player == 'scissors'
    "The computer chose paper. You win!"
  elsif computer == 'paper' && player == 'paper'
    "The computer chose paper. It's a tie."
  elsif computer == 'paper' && player == 'rock'
    "The computer chose paper. You lose!"
  elsif computer == 'rock' && player == 'scissors'
    "The computer chose rock. You lose!"
  elsif computer == 'rock' && player == 'paper'
    "The computer chose rock. You win!"
  elsif computer == 'rock' && player == 'rock'
    "The computer chose rock. It's a tie!"
  end
end



