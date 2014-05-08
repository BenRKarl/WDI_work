require 'bundler'
Bundler.require

require './config.rb' #runs the code that establishes our connection to DB
require './models/kitten'

#new
get '/kittens/random' do
  @kitten = kitten.new({:width => rand(100..400), :height => rand(100..400)})
  erb :random
end

get '/kittens' do
  @kittens = kitten.all
  erb :index
end

#create
post '/kittens' do
  kitten = Kitten.create(width: params[:width].to_i, height: params[:height].to_i)
  redirect '/kittens'
end
