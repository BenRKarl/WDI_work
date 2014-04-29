require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :home
end

get '/add/:num1/:num2' do
  @num1 = params[:num1]
  @num2 = params[:num2]
  @sum = @num1.to_i + @num2.to_i
  erb :add
end

get '/subtract/:num1/:num2' do
  @num1 = params[:num1]
  @num2 = params[:num2]
  @difference = @num1.to_i - @num2.to_i
  erb :subtract
end

get '/multiply/:num1/:num2' do
  @num1 = params[:num1]
  @num2 = params[:num2]
  @product = @num1.to_i * @num2.to_i
  erb :multiply
end

get '/divide/:num1/:num2' do
  @num1 = params[:num1]
  @num2 = params[:num2]
  @quotient = (@num1.to_i. / @num2.to_i).to_f
  erb :divide
end

get '/square/:num1/:num2' do
  @num1 = params[:num1]
  @num2 = params[:num2]
  @square = @num1.to_i ** @num2.to_i
  erb :square
end

get '/sqrt/:num1' do
  @num1 = params[:num1]
  @sqrt = Math.sqrt(@num1.to_i)
  erb :sqrt
end
