require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :test?

end

get '/test_pass?' do
  erb :test_pass?
end

get '/write_test' do
  erb :write_test
end

get '/write_code' do
  erb :write_code
end

get '/refactor?' do
  erb :refactor?
end

get '/select_feature' do
  erb :select_feature
end

get '/refactor_code' do
  erb :refactor_code
end

