require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :games
end


get '/toss' do
  @result = ['Heads', "Tails"].sample
  erb :toss
end

get '/dice_roll' do
  @result = [1, 2, 3, 4, 5, 6].sample
  erb :dice_roll
end


get '/magic8ball/:question' do
  @question = params[:question]
  @result = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
    "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
    "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
    "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
    "Don't count on it", "My reply is no", "My sources say no",
    "Outlook not so good", "Very doubtful"].sample
  erb :magic8ball
end

get '/rps/:throw' do
  @throw = params[:throw]
  @cpu = ["rock", "paper", "scissors"].sample
  @outcome = ""
  if @throw == "rock" && @cpu == "rock"
    @outcome = "It's a tie!"
  elsif @throw == "rock" && @cpu == "paper"
    @outcome = "You lose!"
  elsif @throw == "rock" && @cpu == "scissors"
    @outcome = "You win!!"
  elsif @throw == "paper" && @cpu == "rock"
    @outcome = "You win!"
  elsif @throw == "paper" && @cpu == "paper"
    @outcome = "It's a tie!"
  elsif @throw == "paper" && @cpu == "scissors"
    @outcome = "You lose!!"
  elsif @throw == "scissors" && @cpu == "rock"
    @outcome = "You lose!"
  elsif @throw == "scissors" && @cpu == "paper"
    @outcome = "You win!"
  elsif @throw == "scissors" && @cpu == "scissors"
    @outcome = "It's a tie!"
  end



  erb :rps

end
