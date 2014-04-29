require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :calculator
end

get '/add/:a/:b' do
  a = params[:a].to_i
  b = params[:b].to_i
  @result = a + b
  erb :add
end

get '/subtract/:a/:b' do
  a = params[:a].to_i
  b = params[:b].to_i
  @result = a - b
  erb :subtract
end

get '/multiply/:a/:b' do
  a = params[:a].to_i
  b = params[:b].to_i
  @result = a * b
  erb :multiply
end

get '/divide/:a/:b' do
  a = params[:a].to_f
  b = params[:b].to_f
  @result = a / b
  erb :divide
end

get '/sqrt/:a' do
  a = params[:a].to_i
  @result = Math.sqrt(a)
  erb :sqrt
end

get '/powers/:a/:b' do
  a = params[:a].to_i
  b = params[:b].to_i
  @result = a**b
  erb :powers
end
