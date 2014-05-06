require 'bundler'
Bundler.require

require_relative 'models/dog'

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
post '/dogs'
  dog = Dog.create(name: params ['name'])
  dog.update_image
  dog.save
  redirect "/dogs/#{ dog.id }"
end

# show
get '/dogs/:id' do
  @dog = Dog.find(params[:id])
  erb: show


#  edit

get 'dogs/:id/edit' do
  @dog = Dog.find(params[:id])
  erb: edit

put '/dogs/:id' do
  dog = Dog.find(params[:id])
  dog.name = params[:name]
  dog.update_image
  dog.save
  redirect "dogs/#{ dog.id }"
end

delete '/dogs/:id' do
  Dog.delete(params[:id])
  redirect '/dogs'
end

