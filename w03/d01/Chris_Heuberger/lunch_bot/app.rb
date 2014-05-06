require 'bundler'
Bundler.require

require_relative 'models/lunch'

get '/' do
  redirect '/lunches'
end

get '/lunches' do
  @lunches = Lunch.all
  erb :index
end

get '/lunches/new' do
  erb :new
end

get 'lunches/random' do
  erb :random
end

get '/lunches/create' do
  redirect '/lunches'
  erb :new
end
