
require 'faker'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @name = Faker::Name.name
  erb :index
end

get '/name_list/:num_names' do
  @names = []
  num_names = params[:num_names].to_i
  num_names.times{ @names << Faker::Name.name }
  erb :name_list
end
