require 'bundler'
Bundler.require

require_relative 'models/dog'
require_relative './config'

# index redirect
  get '/' do
    redirect '/dogs'
  end

# index
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
  name  = params['dog_name']
  age   = params['dog_age']
  breed = params['dog_breed']
  dog = Dog.create({ :name => name, :age => age, :breed => breed})
  dog.save
  redirect "/dogs/#{ dog.id }"
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

# update
put '/dogs/:id' do
  dog      = Dog.find(params[:id])
  dog.name = params['dog_name']
  dog.age  = params['dog_age']
  dog.breed= params['dog_breed']
  dog.save
  redirect "/dogs/#{dog.id}"
end

# delete
delete '/dogs/:id' do
  Dog.delete(params[:id])
  redirect "/dogs"
end
