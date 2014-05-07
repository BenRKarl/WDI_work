require 'bundler'
Bundler.require

require './models/dog'
require './config'

get '/' do
	redirect '/dogs'
end

get '/dogs' do 
	# Dog.all makes SQL query to `wdi_dogs` DB
	# then it sends command SELECT * FROM dogs
	# which returns an array of Dog OBJECTS
	@dogs = Dog.all 
	erb :index
end

get '/dogs/new' do 
	erb :new
end

post '/dogs' do
	# creates new DB entries from form inputs
	Dog.create(name: params[:name], age: params[:age], breed: params[:breed])
	# another way
	# Dog.create(:name => params[:name], :age => params[:age], :breed => params[:breed])

	# ultimately redirect to show page.
	# for now, redirect to index
	redirect '/dogs'
end

get '/dogs/show/:id' do
	@new_dog = Dog.find(params[:id])
	erb :show
end

get '/dogs/:id/update' do
	@edit_dog = Dog.find(params[:id])
	erb :modify
end

put '/dogs/:id' do
  canine = Dog.find(params[:id])
  canine.name = params['name']
  canine.age = params['age']
  canine.breed = params['breed']
  canine.save
  redirect "/dogs/show/#{canine.id}"
end

delete '/dogs/:id' do
  Dog.delete(params[:id])
  redirect '/dogs'
end
