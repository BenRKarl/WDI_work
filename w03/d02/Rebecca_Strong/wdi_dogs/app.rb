require 'bundler/setup'
Bundler.require

require_relative 'models/dog'
require_relative './config'

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'wdi_dogs'
)

get '/' do

end

get '/dogs' do
  @dogs = Dog.all
  erb :index
  end

  get'/dogs/new' do
    erb :new
end

post '/dogs' do
    name = params['dog_name']
    age = params['dog_age']
    breed = params['dog_breed']
    Dog.create({:name => name, :age => age, :breed => breed})
    redirect '/dogs'
end

get '/dogs/:id' do
  @dog = Dog.find(params[:id])
  erb :show
end

get '/dogs/:id/edit' do
@dog = Dog.find(params[:id])
erb :edit
end

put '/dogs/:id' do
  dog = Dog.find(params[:id])
  dog.name = params['dog_name']
  dog.age = params['dog_age']
  dog.breed = params['dog_breed']
  dog.save
  redirect "/dogs/#{dog.id}"
end

delete '/dogs/:id' do
  Dog.delete(params[:id])
  redirect '/dogs'
end
