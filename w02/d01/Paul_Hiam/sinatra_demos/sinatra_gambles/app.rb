require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
  erb :games
end

get '/toss' do
  @result = ['Heads', 'Tails'].sample
  erb :toss
end

get '/dice_roll' do
	@roll = rand(6)+1
	erb :dice_roll
end

#when magic 8 ball is chosen from menu (no question)
get '/magic8ball' do
	erb :m8ball
end

#when user reads instr. on above page and inputs question
 get '/magic8ball/:question' do
	@question = params[:question].gsub('%20', ' ')
	@answers = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely", "You may rely on it", "As I see it yes", "Most likely", "Outlook good", "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",   "Better not tell you now", "Cannot predict now", "Concentrate and ask again", "Don't count on it", "My reply is no", "My sources say no", "Outlook not so good", "Very doubtful"]
     @choice = @answers.sample
	@responce = "#{@question}? #{@choice}"
	
	erb :magic8ball
end

get '/rps' do
	erb :rpset
end

get '/rps/:play' do

	@play = params[:play]
	@comp = ["rock", "paper", "scissors"].sample
	@result = "lose"
	  case @play 
	  	 when @comp
	  	   @result = "tie"
	     when "rock" 
	     	if @comp != "paper"
	  		  @result = "win"
	  		else
	  			@result = "lose"
	  		end
	  	when "paper"
	  		if @comp != "scissors"
	  		  @result = "win"
	  		else
	  			@result = "lose"
	  		end
	  	when "scissors"
	  		if @comp != "rock"
	  		  @result = "win"
	  		else
	  			@result = "lose"
	  		end
	  	end
	
	erb :rpshoot
end
