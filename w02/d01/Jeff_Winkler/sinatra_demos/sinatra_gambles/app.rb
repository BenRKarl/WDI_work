
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :games
end

get '/:whichgame' do

  @whichgame = params[:whichgame]
  if @whichgame == "toss"
    @result = ['Heads', 'Tails'].sample
  elsif @whichgame == "dice_roll"
    @result = rand(6)+1
  end

  erb :toss
end

get '/:whichgame/:question' do
  m8 = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
    "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
    "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
    "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
    "Don't count on it", "My reply is no", "My sources say no",
    "Outlook not so good", "Very doubtful"]

  @whichgame = params[:whichgame]

  if @whichgame == "magic8ball"
    @question = params[:question].gsub("%", " ")
    @result = "#{@question}? #{m8.sample}"
  else
    @question = params[:question]
    if @question == "rock"
     @result = "The computer chose scissors. You win!"
   else
    @result = "The computer chose rock. You lose!"
   end
  end

  erb :toss
end

