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

get '/magic_8_ball' do
@result = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
 "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
 "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
 "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
 "Don't count on it", "My reply is no", "My sources say no",
 "Outlook not so good", "Very doubtful"].sample
erb :magic_8_ball
end 




get '/rps_rock' do
	@computer = ["rock", "paper", "scissors"].sample 
	
	if @computer == "rock"
		#puts "It's a tie!"

	elsif @computer == "paper"
		#puts "You lose"

	elsif @computer == "scissors"
		#puts "You win!"

	else
		#puts "Let's play rock paper scissors!"
	end

	#case @computer
	#when "rock"
		#"its a tie"
	#when "paper"
		#"You lose"
	#when "scissors"
		 #"You win!"
	#else
		#"Let's play rock paper scissors!"
	#end 



	erb :rps_rock

end 

get '/rps_scissors' do
	@computer = ["rock", "paper", "scissors"].sample
	case @computer
	when "rock"
		"You lose"
	when "paper"
		"You win"
	when "scissors"
		 "It's a tie!"
	else
		"Let's play rock paper scissors!"
	end 



	erb :rps_scissors
end 
 

