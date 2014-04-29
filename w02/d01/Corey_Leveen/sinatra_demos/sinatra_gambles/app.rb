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

get '/magic8ball/:question' do
  @question = params[:question]

  @fortune =
  ["It is certain",
    "It is decidedly so",
    "Without a doubt",
    "Yes definitely",
    "You may rely on it",
    "As I see it yes",
    "Most likely",
    "Outlook good",
    "Yes",
    "Signs point to yes",
    "Reply hazy try again",
    "Ask again later",
    "Better not tell you now",
    "Cannot predict now",
    "Concentrate and ask again",
    "Don't count on it",
    "My reply is no",
    "My sources say no",
    "Outlook not so good",
    "Very doubtful"].sample

erb :magic8ball
end

get '/rps/:choice' do
  @choice = params[:choice]
  @computer_choice = ["rock", "paper", "scissors"].sample
  @outcome = ''
  case @choice
    when 'rock'
      if @computer_choice == "paper"
        @outcome = 'lose'
      elsif @computer_choice == "scissors"
        @outcome = 'win'
      else
        @outcome = 'tie'
      end
    when 'paper'
      if @computer_choice == "rock"
        @outcome = 'win'
      elsif @computer_choice == "scissors"
        @outcome = 'lose'
      else
        @outcome = 'tie'
      end
    when 'scissors'
      if @computer_choice == "rock"
        @outcome = 'lose'
      elsif @computer_choice == "paper"
        @outcome = 'win'
      else
        @outcome = 'tie'
      end
  end
  erb :rps
end
