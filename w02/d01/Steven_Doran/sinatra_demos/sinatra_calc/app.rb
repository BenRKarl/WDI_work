require "sinatra"
require "sinatra/reloader"

get '/' do
  erb :calculator
end

get '/add/:num1/:num2' do
  @num1 = params[:num1]
  @num2 = params[:num2]
  @answer = @num1.to_i + @num2.to_i
  erb :add
end

get '/subtract/:num1/:num2' do
  @num1 = params[:num1]
  @num2 = params[:num2]
  @answer = @num1.to_i - @num2.to_i
  erb :subtract
end

get '/multiply/:num1/:num2' do
  @num1 = params[:num1]
  @num2 = params[:num2]
  @answer = @num1.to_i * @num2.to_i
  erb :multiply
end

get '/divide/:num1/:num2' do
  @num1 = params[:num1]
  @num2 = params[:num2]
  @answer = @num1.to_f / @num2.to_f
  erb :divide
end

get '/power/:num1/:num2' do
  @num1 = params[:num1]
  @num2 = params[:num2]
  @answer = @num1.to_i ** @num2.to_i
  erb :power
end

get '/sqrt/:num1' do
  @num1 = params[:num1]
  @answer = Math.sqrt(@num1.to_i)
  erb :sqrt
end

















