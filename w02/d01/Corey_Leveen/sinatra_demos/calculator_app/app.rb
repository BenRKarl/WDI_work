require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :instructions
end

get '/add/:first_add/:second_add' do
  @first_add = params[:first_add]
  @second_add = params[:second_add]
  @sum = @first_add.to_i + @second_add.to_i
  erb :add_output
end

get '/subtract/:first_subtract/:second_subtract' do
  @first_subtract = params[:first_subtract]
  @second_subtract = params[:second_subtract]
  @difference = @first_subtract.to_i - @second_subtract.to_i
  erb :subtract_output
end

get '/multiply/:first_multiply/:second_multiply' do
  @first_multiply = params[:first_multiply]
  @second_multiply = params[:second_multiply]
  @product = @first_multiply.to_i * @second_multiply.to_i
  erb :multiply_output
end

get '/divide/:first_divide/:second_divide' do
  @first_divide = params[:first_divide]
  @second_divide = params[:second_divide]
  @division = @first_divide.to_f / @second_divide.to_f
  erb :divide_output
end

