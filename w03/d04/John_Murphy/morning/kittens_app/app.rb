require 'bundler'
Bundler.require
require './config'
require './models/kitten'


get '/' do

redirect '/kittens'
end

get '/kittens' do

  @kittens = Kitten.all
  erb :index
end

get '/kittens/random' do

  @width = rand(200..800)
  @height = rand(200..800)

  erb :random

end


post '/kittens' do

  width = params[:width]
  height = params[:height]
  Kitten.create({width: width, height: height})
  redirect '/kittens'

end
