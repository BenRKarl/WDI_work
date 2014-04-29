require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :menu
end

get '/add/:int1/:int2' do
  @integer1 = params[:int1]
  @integer2 = params[:int2]
  erb :add
end

get '/subtract/:int1/:int2' do
  @integer1 = params[:int1]
  @integer2 = params[:int2]
  erb :subtract
end

get '/multiply/:int1/:int2' do
  @integer1 = params[:int1]
  @integer2 = params[:int2]
  erb :multiply
end

get '/divide/:int1/:int2' do
  @integer1 = params[:int1]
  @integer2 = params[:int2]
  erb :divide
end
