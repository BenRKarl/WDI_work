require 'bundler'
Bundler.require

require './config'
require './models/kitten'

get '/' do
	redirect '/kittens/random'
end


get '/kittens' do
	@kittens = Kitten.all

	erb :show
end


get '/kittens/random' do
	@kitten = Kitten.new({:width => rand(100..300), 
												:height => rand(100..300)})

	erb :index
end


post '/kittens' do
	width = params[:width]
	height = params[:height]
	new_kitten = Kitten.create({width: width, height: height})

	redirect '/kittens'
end

