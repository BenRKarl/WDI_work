require 'bundler'
Bundler.require

require_relative 'models/dog'
require_relative  './config'

#redirect
get '/' do
  redirect '/dogs'
end

#index
get '/dogs' do
  @dogs = Dog.all
  erb :index
end

#new
get '/dogs/new' do
  erb :new
end

#create
post '/dogs' do
  dog = params['name']
  age = params['age']
  breed = params['breed']
  Dog.create({:name => name, :age => age, :breed => breed})
  redirect '/dogs'
end

#show
get '/dogs/:id' do
  @dog = Dog.find(params[:id])
  erb :show
end

#update
get '/dogs/:id' do
  dog = Dog.find(params[:id])
  dog.name = params['name']
  dog.age = params['age']
  dog.breed = params['breed']
  dog.save
  redirect "/dogs/#{dog.id}"
end

#delete
delete '/dogs/:id' do
  Dog.delete(params[:id])
  redirect '/movies'
end
