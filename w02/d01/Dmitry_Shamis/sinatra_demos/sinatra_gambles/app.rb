require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :games
end

get '/toss' do
  @result = ['Heads', 'Tails'].sample
  erb :toss
end

get '/dice' do
  @roll = [1, 2, 3, 4, 5, 6].sample
  erb :dice
end

get '/magic8ball' do
  @question = params[:question]
  @answer = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
    "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
    "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
    "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
    "Don't count on it", "My reply is no", "My sources say no",
    "Outlook not so good", "Very doubtful"].sample
    erb :magic8ball
end

get '/magic8ball/:question' do
  @question = params[:question]
  @answer = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
    "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
    "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
    "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
    "Don't count on it", "My reply is no", "My sources say no",
    "Outlook not so good", "Very doubtful"].sample
    erb :magic8ball
end

get '/rps/:rps' do
  @user = params[:rps]
  @choice = ['Rock', 'Paper', 'Scissors'].sample
  @winner = winner
  erb :rps
end

def winner
  if @user == 'rock' && @choice =='Rock'
    "It's a tie..."
  elsif @user == 'rock' && @choice == 'Paper'
    "You lose."
  elsif @user == 'rock' && @choice == 'Scissors'
    "You win!"
  elsif @user == 'paper' && @choice =='Rock'
    "You win!"
  elsif @user == 'paper' && @choice == 'Paper'
    "It's a tie..."
  elsif @user == 'paper' && @choice == 'Scissors'
    "You lose."
  elsif @user == 'scissor' && @choice =='Rock'
    "You lose."
  elsif @user == 'scissors' && @choice == 'Paper'
    "You win!"
  elsif @user == 'scissors' && @choice == 'Scissors'
    "It's a tie..."
  end
end


