require 'bundler'
require_relative './config.rb'
require_relative 'models/dog'
Bundler.require

# index
get '/' do
  
end

get '/dogs' do
end

# new
get '/dogs/new' do
end

# create
post '/dogs' do
end

#show
get '/dogs/:id' do
end

#edit
get '/dogs/:id/edit' do
end

put 'dogs/:id' do
  
end

#delete
delete '/dogs/:id' do

end
