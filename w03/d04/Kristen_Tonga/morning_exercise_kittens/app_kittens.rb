require 'bundler'
Bundler.require

require_relative 'models/kitten'
require_relative 'config'

get '/' do
  @kitten = Kitten.new
  erb :index
end

get '/kittens' do
  @kittens = Kitten.all
  erb :all
end
post '/kittens' do
  kitten = Kitten.create({width: params['width'], height: params['height']})
  redirect '/kittens'
end
