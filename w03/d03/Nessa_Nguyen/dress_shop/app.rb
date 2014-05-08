require 'bundler'
Bundler.require

require './models/occasion'
require './models/dress'

require './config'

get '/' do 
	@occasions = Occasion.all
	erb :index
end


get '/occasions/new' do
	erb :'occasions/new'
end


post '/occasions' do
	occasion = params[:occasion]
	new_occasion = Occasion.create({occasion: occasion})
	redirect "/occasions/#{ new_occasion.id }"
end


get '/occasions/:id' do
	@occasion = Occasion.find(params[:id])
	erb :'occasions/show'
end


get '/occasions/:id/dresses/new' do
	@occasion = Occasion.find(params[:id])
	erb :'dresses/new'
end

post '/occasions/:id/dresses' do
	img_url     = params[:img_url]
	description = params[:description]
	occasion = Occasion.find(params[:id])
	new_dress = Dress.create({img_url: img_url, description: description})
	occasion.dresses << new_dress

	redirect "/occasions/#{params[:id]}"
end


delete '/occasions/:occasion_id/dresses/:dress_id' do
	occasion_id = params[:occasion_id]
	dress_id = params[:dress_id]
	Dress.delete(dress_id)

	redirect "/occasions/#{ occasion_id }"
end















