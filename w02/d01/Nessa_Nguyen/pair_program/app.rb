require 'sinatra'
require 'sinatra/reloader'


get '/' do 
  erb :test		
end

get '/pass' do
  erb :pass
end

get '/no_pass' do
  erb :no_pass
end

get '/refactor' do
  erb :refactor
end

get '/feature' do
  erb :feature
end