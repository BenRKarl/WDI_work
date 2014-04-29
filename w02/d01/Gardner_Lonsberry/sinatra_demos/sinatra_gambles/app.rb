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
  @dice_result = rand(6)+1
  erb :dice_roll
end

get '/magic_8ball' do
  array = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
    "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
    "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
    "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
    "Don't count on it", "My reply is no", "My sources say no",
    "Outlook not so good", "Very doubtful"]
  @result = array.sample
    erb :magic_8ball
end


# get '/rps/:scissors' do
#   @scissors = params[:scissors]
#   erb :rps
# end

# get '/rps/:result' do
#   array = param['Rock', 'Paper', 'Scissor'].sample
#   @result = array
#   erb :rps
# end

# get '/location/:local' do
#   @local = params[:local]
#   @found_item = ['gold', 'magic spells', 'soup'].sample
#     erb :location
# end




#   rock = rps[0]
#   paper= rps[1]
#   scissors = rps[2]
#   random_rps = rps.sample
#   erb      = :rps
# end

# if rps

# def winner(p1, p2)
#   wins = {rock: :scissors, scissors: :paper, paper: :rock}
#   {true => p1, false => p2}[wins[p1] == p2]
# end


