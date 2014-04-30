require 'Faker'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @name = Faker::Name.name
  erb :index
end
