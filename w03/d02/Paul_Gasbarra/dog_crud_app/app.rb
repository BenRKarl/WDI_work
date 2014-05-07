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

get '/dogs/new' do
  erb :new
end

#create
post '/dogs' do
  dog = Dog.create(name: params['name'], age: params['age'], breed: params['breed'])
  dog.save
  redirect "/dogs/#{dog.id }"
end

#show
get '/dogs/:id' do
  @dog = Dog.find(params[:id])
  erb :show
end

# edit
get '/dogs/:id/edit' do
  @dog = Dog.find(params[:id])
  erb :edit
end

put '/dogs/:id' do
  dog = Dog.find(params[:id])
  dog.name = params[:name]
  dog.age = params[:age]
  dog.breed = params[:breed]
  dog.save
  redirect "/dogs/#{dog.id }"
end

delete '/dogs/:id/delete' do
  Dog.delete(params[:id])
  redirect '/dogs'
end
