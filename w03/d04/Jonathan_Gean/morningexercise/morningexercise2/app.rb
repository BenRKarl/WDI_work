require 'bundler'
Bundler.require

require_relative "config"
require_relative "models/kitten"

get '/kittens' do
  @kittens = Kitten.all
  erb :index
end

get '/kittens/random' do
  @x = rand(10..500)
  @y = rand(10..500)
  erb :show
end

post '/kittens' do
Kitten.create(width: params[:width].to_i, height: params[:height].to_i)
redirect '/kittens'
end
