require "sinatra"
require "sinatra/reloader"


get "/" do
  erb :games
end

get "/toss" do
  @result = ["Heads", "Tails"].sample
  erb :toss
end

get "/dice_roll" do
  @dice = [1, 2, 3, 4, 5, 6].sample
  erb :dice_roll
end

get "/magic8ball" do
  @question = "(Add a question in the URL field...)"
  @fortunes = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
    "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
    "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
    "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
    "Don't count on it", "My reply is no", "My sources say no",
    "Outlook not so good", "Very doubtful"].sample
  erb :magic8ball
end

get "/magic8ball/:question" do
  @question = params[:question]

  @fortunes = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
    "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
    "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
    "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
    "Don't count on it", "My reply is no", "My sources say no",
    "Outlook not so good", "Very doubtful"].sample

  erb :magic8ball
end

get "/rps/:user_play" do
  plays = ["rock", "paper", "scissors"]
  @comp_play = plays.sample

  user_play = params[:user_play]

  case @comp_play
  when "rock"
    case user_play
    when "rock"
      @outcome = "It's a tie!"
    when "paper"
      @outcome = "You win!"
    when "scissors"
      @outcome = "You lose..."
    end
  when "paper"
    case user_play
    when "rock"
      @outcome = "You lose..."
    when "paper"
      @outcome = "It's a tie!"
    when "scissors"
      @outcome = "You win!"
    end
  when "scissors"
    case user_play
    when "rock"
      @outcome = "You win!"
    when "paper"
      @outcome = "You lose..."
    when "scissors"
      @outcome = "It's a tie!"
    end
  end

  erb :rps
end

get "/rps" do
  @comp_play = "Add rock, paper or scissors to the URL field."
  erb :rps
end
