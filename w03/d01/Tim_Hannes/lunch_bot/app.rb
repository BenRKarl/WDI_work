require 'bundler'
Bundler.require

require_relative 'models/lunch'

get '/' do
  redirect '/lunches'
end

get '/lunches' do
  erb :index
end

post '/lunches/new'
  item = params['lunch_item']
  number = params['picked_count']
end
end
