require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb :games
end

get '/toss' do
	@result = ["HEADS", "TAILS"].sample
	erb :toss
end

get '/dice_roll' do
	@result = rand(7)
	erb :dice_roll
end

get '/magic_ball/:ask_anything' do
	input = params[:ask_anything]
	possibilities = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
    "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
    "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
    "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
    "Don't count on it", "My reply is no", "My sources say no",
    "Outlook not so good", "Very doubtful"]
	# @result = possibilities[rand(possibilities.length)+1]
	@result = possibilities.sample
	erb :magic_ball
end

get '/rps/rock' do
	@array = ["Rock", "Paper", "Scissors"].sample
	if @array == "Scissors"
		@result = "Computer chose #{@array}. You win"
	elsif @array == "Paper"
		@result = "Computer chose #{@array}. You lose"
	else
		@result = "Computer chose #{@array}. Try again"
	end
	erb :rps
end

get '/rps/scissors' do
	@array = ["Rock", "Paper", "Scissors"].sample
	if @array == "Paper"
		@result = "Computer chose #{@array}. You win"
	elsif @array == "Rock"
		@result = "Computer chose #{@array}. You lose"
	else
		@result = "Computer chose #{@array}. Try again"
	end
	erb :rps
end