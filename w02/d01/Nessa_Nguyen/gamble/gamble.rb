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
	@result = rand(6) + 1
	erb :dice_roll
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


get '/rps/:pick' do
	@pick = params[:pick]
	@computer = ['rock', 'paper', 'scissors'].sample
	if @pick == @computer
	  @result = "It's a tie"	
	elsif @pick == 'paper' && @computer == 'rock'
	  @result = "You win"
	elsif @pick == 'paper' && @computer == 'scissors'
		@result = "You lose"
	elsif @pick == 'rock' && @computer == 'paper'
		@result = "You lose"
	elsif @pick == 'rock' && @computer == 'scissors'
		@result = "You win"
	elsif @pick == 'scissors' && @computer == 'paper'
		@result = "You win"
	else @pick == 'scissors' && @computer == 'rock'	
	  @result = "You lose"		 	  		 	  
	end	
	erb :rps	
end