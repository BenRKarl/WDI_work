require 'bundler'
Bundler.require

require_relative './models/kitten'
require_relative './config'

get '/kittens/random' do
  @width = rand(100..500)
  @length = rand(100..500)
  erb :random
end

get '/kittens' do
  @kittens = Kitten.all
  erb :index
end

post '/kittens' do
  width = params['width'].to_i
  length = params['length'].to_i
  Kitten.create({width: width, length: length})
  redirect '/kittens'
end


