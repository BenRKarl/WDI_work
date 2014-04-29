require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :sinatra_calculator_functions
end

get '/add' do
  @result = n1 + n2
  erb :add
end

get '/subtract' do
  @result = n1 - n2
  erb :subtract
end

get '/multiply' do
  @result = n1 * n2
  erb :multiply

get '/divide' do
    @result = n1 / n2
    erb :divide
end

get '/squareroot' do
  @result = n1 ** n2
  erb :squareroot
end
