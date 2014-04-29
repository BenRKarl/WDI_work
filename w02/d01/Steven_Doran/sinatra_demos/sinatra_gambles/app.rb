require "sinatra"
require "sinatra/reloader"

get '/' do
  erb :games
end

get '/toss' do
  @result = ['heads', 'tails'].sample
  erb :toss
end

get '/dice_roll' do
  @result = ['1', '2', '3', '4', '5', '6'].sample
  erb :dice_roll
end

get '/magic8ball/:query' do
  @query = params[:query]
  @result = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
    "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
    "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
    "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
    "Don't count on it", "My reply is no", "My sources say no",
    "Outlook not so good", "Very doubtful"].sample
    erb :magic8ball
end

get '/rps/:player' do
  @player = params[:player]
  @computer = ["rock", "paper", "scissors"].sample
  @result = ["You win!", "The computer wins!", "It's a tie!"]

  if (@player == "rock" && @computer == "scissors") || (@player == "paper" && @computer == "rock") || (@player == "scissors" && @computer == "paper")
    @win = 0
  elsif (@computer == "rock" && @player == "scissors") || (@computer == "paper" && @player == "rock") || (@computer == "scissors" && @player == "paper")
    @win = 1
  elsif (@computer == @player)
    @win = 2
  end

  erb :rps
end









