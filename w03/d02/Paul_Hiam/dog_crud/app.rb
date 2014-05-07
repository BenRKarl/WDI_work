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
  dog = Dog.create(name: params['name'], breed: params['breed'], age: params['age'])
  dog.save
  redirect "/dogs/#{ dog.id }"
end
get '/dogs/new' do
  erb :new
end

#show
get '/dogs/:id' do
  @dog = Dog.find(params[:id])
  erb :show
end

#edit
get '/dogs/:id/edit' do
  @dog = Dog.find(params[:id])
  @dog.name = params[:name]
  @dog.breed = params[:breed]
  @dog.age = params[:age]
  erb :edit
end

put '/dogs/:id' do
  dog = Dog.find(params[:id])
  dog.name = params[:name]
  dog.breed = params[:breed]
  dog.age = params[:age]
  dog.save
  redirect "/dogs/#{ dog.id }"
end

delete '/dogs/:id' do
  Dog.delete(params[:id])
  redirect '/dogs'
end
