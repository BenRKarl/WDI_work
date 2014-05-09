require 'bundler'
Bundler.require

require './config.rb' 
require './models/kitten'

get '/kittens/random' do
	@width = rand(250..500)
	@height = rand(250..500)
   	erb :random
end

get '/kittens' do
	@kittens = Kitten.all
	erb :index
end

post '/kittens' do
	Kitten.create(width: params[:width].to_i, height: params[:height].to_i)
	redirect '/kittens'
end

