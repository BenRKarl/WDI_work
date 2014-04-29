require 'sinatra.rb'
require 'sinatra/reloader'

get '/' do
  erb :games
end

get '/toss' do
  @result = ["heads","tails"].sample
  erb :toss
end

get '/dice_roll' do
  @result = rand(6) + 1
  erb :dice_roll
end

get '/magic8ball/:question' do
  ball_arr = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
    "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
    "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
    "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
    "Don't count on it", "My reply is no", "My sources say no",
    "Outlook not so good", "Very doubtful"]

  
    @result = params[:question] + ": " + ball_arr.sample
    erb :magic8ball
end

get '/rps/:move' do

  @user = params[:move]
  @computer = ["rock", "paper", "scissors"].sample

  if @user == @computer
    output = :tie
  else

    case @user
    when "rock"
      case @computer
      when "paper"
        output = :computer_wins
      when "scissors"
        output = :user_wins
      end
    when "paper"
      case @computer
      when "rock"
        output = :user_wins
      when "scissors"
        output = :computer_wins
      end
    when "scissors"
      case @computer
      when "rock"
        output = :computer_wins
      when "paper"
        output = :user_wins
      end
    else
      output = :invalid
    end
  end

  case output
  when :user_wins
    @result = "You win!"
  when :computer_wins
    @result = "Computer wins!"
  when :tie
    @result = "It's a tie."
  when :invalis
    @result = "You put in an invalid entry."
  end

    





  erb :rps

end


  




