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


#show
