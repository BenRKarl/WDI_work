require "bundler/setup"
Bundler.require

  compliments = [
  "You are looking great today.",
  "I love your jacket.",
  "You look really smart.",
  "Lots of people would love to be you.",
  "You have a pretty great attitude.",
  "I'm jealous of how your hair is.",
  "You're sorta tall.",
  "You obviously showered.",
  "Nice pants."
  ]

def random_color
  rand(255)
end

get "/" do
  erb :compliment
end

post "/names" do
  name = params[:name].gsub(" ", "%20")
  redirect "/names?name=#{name}"
end

get "/names" do
  @name = params[:name]
  @statement = compliments.sample
  erb :names
end

