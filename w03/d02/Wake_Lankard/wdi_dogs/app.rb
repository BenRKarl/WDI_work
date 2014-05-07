require 'bundler'
Bundler.require
require_relative './config'
require_relative 'models/dog'


# index
get '/' do
  
  redirect '/dogs'
end
 
get '/dogs' do
  @dogs = Dog.all
  @message =" The Dogs.  They have escaped and I am unsure who is responsible."
  @message = "So long, #{params[:name]}!" if params[:name] != nil
  erb :index
end

# new
get '/dogs/new' do
  erb :new
end

# create
post '/dogs' do
  name = params[:dog_name]
  age = params[:dog_age]
  breed = params[:dog_breed]
  new_dog = Dog.create( { name: name, age: age, breed: breed } )
  new_dog.save
  redirect "/dogs/#{new_dog.id}"
  
end

#show
get '/dogs/:id' do
  @dog = Dog.find(params[:id])
  erb :show
end

#edit
get '/dogs/:id/edit' do
   @dog = Dog.find(params[:id])
  erb :edit
end

put '/dogs/:id' do
  dog = Dog.find(params[:id])
  dog.name = params[:dog_name]
  dog.age = params[:dog_age]
  dog.breed = params[:dog_breed]
  dog.save
  redirect "/dogs/#{dog.id}"
  
end

#delete
delete '/dogs/:id' do
  dog = Dog.find(params[:id])
  
  Dog.delete(params[:id])

 redirect "/dogs?name=#{dog.name}"

end
