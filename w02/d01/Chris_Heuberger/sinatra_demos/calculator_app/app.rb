require 'sinatra'
require 'sinatra/reloader'

get '/add/:num1/:num2' do
  @num1 = params[:num1].to_i
  @num2 = params[:num2].to_i
  @final = @num1 + @num2
  erb :calc
end

get '/subtract/:num1/:num2' do
  @num1 = params[:num1].to_i
  @num2 = params[:num2].to_i
  @final = @num1 - @num2
  erb :calc
end

get '/multiply/:num1/:num2' do
  @num1 = params[:num1].to_i
  @num2 = params[:num2].to_i
  @final = @num1 * @num2
  erb :calc
end

get '/divide/:num1/:num2' do
  @num1 = params[:num1].to_i
  @num2 = params[:num2].to_i
  @final = @num1 / @num2
  erb :calc
end
