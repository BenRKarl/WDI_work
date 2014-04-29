require 'sinatra'
require 'sinatra/reloader'

get '/' do 
	erb :games
end

get '/toss' do
	@result = ['Heads','Tails'].sample
	erb :toss
end

get '/dice_roll' do
	@result = rand(6)+1
	erb :dice_roll
end

get '/magic8ball/:question' do
	@question = params[:question]
	@result = ["It is certain", "It is decidedly so", "Without a doubt", 
		"Yes definitely", "You may rely on it", "As I see it yes", "Most likely", 
		"Outlook good", "Yes", "Signs point to yes", "Reply hazy try again", 
		"Ask again later", "Better not tell you now", "Cannot predict now", 
		"Concentrate and ask again", "Don't count on it", "My reply is no", 
		"My sources say no", "Outlook not so good", "Very doubtful"].sample
	erb :magic8ball
end

get '/rps/:player' do	
	@player = params[:player]
	@computer = ['rock','paper','scissors'].sample

	case @player
	when "rock"		
		@result = "Tie." if @computer == "rock"
		@result = "You lose." if @computer == "paper"
		@result = "You win." if @computer == "scissors"
			
	when "paper"		
		@result = "Tie." if @computer == "paper"
		@result = "You lose." if @computer == "scissors"
		@result = "You win." if @computer == "rock"

	when "scissors"		
		@result = "Tie." if @computer == "scissors"
		@result = "You lose." if @computer == "rock"
		@result = "You win." if @computer == "paper"
	else
		@result = "Not a correct choice."
	end

	erb :rps
end
