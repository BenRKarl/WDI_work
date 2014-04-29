require 'sinatra'
require 'sinatra/reloader'

get '/' do 
	erb :games
end

get 'toss' do
	@result = ['Heads', 'Tails'].sample
	['Heads', 'Tails'].sample
	erb:toss
end

get '/dice_roll' do
	@result = rand(6)+1
	erb :dice_roll
end

get '/magic8ball/:question' do
	@question = params[:question]

	answers =
		["It is certain", "It is decidedly so", "Without a doubt",
		 "Yes definitely", "You may rely on it", "As I see it yes",
		 "Most likely", "Outlook good", "Yes", "Signs point to yes",
		 "Reply hazy try again", "Ask again later", "Better not tell you now",
		 "Cannot predict now", "Concentrate and ask again", "Don't count on it",
		 "My reply is no", "My sources say no", "Outlook not so good",
		 "Very doubtful"]

	@answer = answers.sample

	erb :magic_8ball
end

get '/rps/:choice' do
	possible_choices = ['rock','paper','scissors']
	user_choice = params[:choice]
	computer_choice = possible_choices.sample

	if user_choice == 'rock'
		if computer_choice == 'rock'
			result = "It's a tie!"
		elsif computer_choice == 'paper'
			result = "You lose!"
		else
			result = "You win!"
		end
	elsif user_choice == 'paper'
		if computer_choice == 'rock'
			result = "You win!"
		elsif computer_choice == 'paper'
			result = "It's a tie!"
		else
			result = "You lose!"
		end
	else
		if computer_choice == 'rock'
			result = "You lose!"
		elsif computer_choice == 'paper'
			result = "You win!"
		else
			result = "It's a tie!"
		end
	end

	@output = "The computer chose #{computer_choice}. #{result}"		

end