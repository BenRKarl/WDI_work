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

get '/rps/:throw' do
  @result = ['rock', 'paper', 'scissors'].sample
  @throw = params[:throw]
  if :throw == 'rock'
    if @result == 'rock'
      @final = 'Tis a tie.'
    elsif @result == 'paper'
      @final = 'You lose.'
    else
      @final = 'You win!'
    end
  elsif :throw == 'paper'
    if @result == 'rock'
      @final = 'You win!'
    elsif @result == 'paper'
      @final = 'Tis a tie.'
    else
      @final = 'You lose.'
    end
  else :throw == 'scissors'
    if @result == 'rock'
      @final = 'You lose.'
    elsif @result == 'paper'
      @final = 'You win!'
    else
      @final = 'Tis a tie.'
    end
  end
  erb :rps
end

get '/magic8ball/:will_it_snow' do
  responses = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
    "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
    "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
    "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
    "Don't count on it", "My reply is no", "My sources say no",
    "Outlook not so good", "Very doubtful"]
  @result = responses.sample
  @local = params[:will_it_snow].gsub("_"," ")
  erb :magic8ball
end
