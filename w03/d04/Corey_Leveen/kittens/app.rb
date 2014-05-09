require 'bundler'
Bundler.require

require './config.rb'
require './models/kitten'

get '/kittens' do
  @kittens = Kitten.all
  erb :index
end

get '/kittens/random' do
  @kitten = Kitten.new({:width => rand(1..400), :height => rand(100..400)})
  erb :random
end

post '/kittens' do
  Kitten.create(width: params[:width].to_i, height: params[:height].to_i)
  redirect '/kittens'
end
