require 'bundler'
Bundler.require

require_relative 'models/dog'
require_relative './config'

get '/' do
	redirect '/dogs'
end

#index
get '/dogs' do
  @dogs = Dog.all
  erb :index
end

#create
post '/dogs' do
	dog = Dog.create(params[:dog])
	dog.save
	redirect "/dogs/#{ dog.id }"
	params.inspect
end

#new
get '/dogs/new' do
	erb :new
end

#show
get '/dogs/:id' do
	@dog = Dog.find(params[:id])
	erb :show
end

#woof
get '/dogs/:id/woof' do
	@dog = Dog.find(params[:id])
	@dog.woof
end

#edit
get '/dogs/:id/edit' do
	@dog =Dog.find(params[:id])
	erb :edit
end

put '/dogs/:id' do
	dog = Dog.find(params[:id])
	dog.name = params[:dog][:name]
	dog.age = params[:dog][:age]
	dog.breed = params[:dog][:breed]
	dog.save
	redirect "/dogs/#{ dog.id }"
end

delete '/dogs/:id' do
	Dog.delete(params[:id])
	redirect '/dogs'
end