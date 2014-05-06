require 'bundler'
Bundler.require

require_relative 'models/dog'
require_relative './config'

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
get 'dogs/new' do
  erb :new
end

#create
post '/dogs' do
  #dog = Dog.create(name: params['name'])
end

#update


#delete
