require 'bundler'
Bundler.require

require_relative 'models/lunch'

get '/'  do
  redirect '/lunches'
end

#index
get '/lunches' do
  @lunches = Lunch.all
  erb :index
end

#new
get '/lunches/new' do
  erb :new
end

post '/lunches' do
  lunch_name = params['lunch_name']
  new_lunch = Lunch.create(lunch_name)
  redirect '/'
end

get '/lunches/random' do
  @lunches.sample
erb :result
end
