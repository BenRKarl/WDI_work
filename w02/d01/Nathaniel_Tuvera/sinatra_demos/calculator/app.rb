require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :start
end

get '/add/:num1/:num2' do
  @num1 = params[:num1]
  @num2 = params[:num2]
  @result = params[:num1].to_i + params[:num2].to_i
  erb :add
end

get '/subtract/:num1/:num2' do
  @num1 = params[:num1]
  @num2 = params[:num2]
  @result = params[:num1].to_i - params[:num2].to_i
  erb :subtract
end

get '/multiply/:num1/:num2' do
  @num1 = params[:num1]
  @num2 = params[:num2]
  @result = params[:num1].to_i * params[:num2].to_i
  erb :multiply
end

get '/divide/:num1/:num2' do
  @num1 = params[:num1]
  @num2 = params[:num2]
  @result = params[:num1].to_i / params[:num2].to_i
  erb :divide
end

get '/powers/:num1/:num2' do
  @num1 = params[:num1]
  @num2 = params[:num2]
  @result = params[:num1].to_i ** params[:num2].to_i
  erb :powers
end

get '/sqrt/:num1' do
  @num1 = params[:num1]
  @result = Math.sqrt(params[:num1].to_i)
  erb :sqrt
end


