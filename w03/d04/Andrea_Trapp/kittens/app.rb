require 'bundler'
Bundler.require

require_relative 'models/kitten' # no def of attr and methods needed, all handled by ActiveRecord
require_relative 'config.rb'  # runs the code that establishes connection to the database

get '/' do  
  redirect '/kittens' 
end

get '/kittens' do 
  @kittens = Kitten.all
  erb :index
end

get '/kittens/random' do 
  @kitten = Kitten.new({:width => rand(100..400), :height => rand(100..400)})
  erb :random
end

post '/kittens' do   
  width = params[:width].to_i
  height = params[:height].to_i
  Kitten.create({width: width, height: height})
  redirect "/kittens"
end
