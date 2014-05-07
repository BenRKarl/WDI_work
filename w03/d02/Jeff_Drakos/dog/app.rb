require "bundler"
Bundler.require

require_relative 'models/dog'
require_relative './config'

get '/' do
  redirect '/dogs'
end

get '/dogs' do
  @dogs = Dog.all
  erb :index
end

# new
get '/dogs/new' do
  erb :new
end

# create
post '/dogs' do
  name = params['dog_name']
  age = params['dog_age']
  breed = params['dog_breed']
  Dog.create({:name => name, :age => age, :breed => breed})
  redirect '/dogs'
end


# show
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
  redirect "/dogs/#{ dog.id }"
end

delete '/dogs/:id' do
  Dog.delete(params[:id])
  redirect '/dogs'
end
