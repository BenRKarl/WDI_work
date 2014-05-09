require "bundler"
Bundler.require

require_relative "models/kitten"
require_relative "config.rb"

get "/" do
  redirect "/kittens"
end

get "/kittens" do
  @kittens = Kitten.all
  erb :index
end

get "/kittens/random" do
  @kitten = Kitten.new(width: rand(100..400), height: rand(100..400))
  erb :random
end

post "/kittens" do
  width = params[:width].to_i
  height = params[:height].to_i
  new_kitten = Kitten.create(width: width, height: width)
  redirect "/kittens"
end
