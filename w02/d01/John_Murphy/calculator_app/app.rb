require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :calculator_menu
end



get '/add/:first/:second' do
  @first = params[:first].to_i
  @second = params[:second].to_i
  @outcome = @first + @second

  erb :add
end

get '/subtract/:first/:second' do
  @first = params[:first].to_i
  @second = params[:second].to_i
  @outcome = @first - @second

  erb :subtract
end

get '/multiply/:first/:second' do
  @first = params[:first].to_i
  @second = params[:second].to_i
  @outcome = @first * @second

  erb :multiply
end

get '/divide/:first/:second' do
  @first = params[:first].to_f
  @second = params[:second].to_f
  @outcome = @first / @second
  erb :divide
end

get '/square_root/:first' do
  @first = params[:first].to_f
  @outcome = @first ** 0.5
  erb :square_root
end

get '/power/:first/:second' do
  @first = params[:first].to_i
  @second = params[:second].to_i
  @outcome = @first ** @second
  erb :power
end
