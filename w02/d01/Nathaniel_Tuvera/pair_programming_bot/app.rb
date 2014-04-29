require 'sinatra'
require 'sinatra/reloader'


get '/' do
  erb :broke
end

get '/done' do
  erb :done
end

get '/pass' do
  erb :pass
end

get '/dry' do
  erb :dry
end

get '/refactor' do
  erb :refactor
end

get '/test' do
  erb :test
end

get '/another_test' do
  erb :another_test
end
