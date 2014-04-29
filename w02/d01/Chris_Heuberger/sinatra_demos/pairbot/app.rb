require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :test
end

get '/pass' do
  erb :pass
end

get '/refactor' do
  erb :refactor
end

get '/feature' do
  erb :feature
end

get '/write_test' do
  erb :write_test
end

get '/just_enough' do
  erb :just_enough
end

get '/do_refactor' do
  erb :do_refactor
end
