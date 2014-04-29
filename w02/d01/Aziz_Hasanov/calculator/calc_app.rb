require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb :calculator
end

get '/add/:x/:y' do
	x = params[:x].to_i
	y = params[:y].to_i
	@addition = x + y
	@result = "#{x} + #{y} equals #{@addition}"
	erb :calculate
end

get '/substract/:x/:y' do
	x = params[:x].to_i
	y = params[:y].to_i
	@substraction = x - y
	@result = "#{x} - #{y} equals #{@substraction}"
	erb :calculate
end

get '/multiply/:x/:y' do
	x = params[:x].to_i
	y = params[:y].to_i
	@multiplication = x * y
	@result = "#{x} * #{y} equals #{@multiplication}"
	erb :calculate
end

get '/divide/:x/:y' do
	x = params[:x].to_i
	y = params[:y].to_i
	if y != 0
		@division = x / y
		@result = "#{x} / #{y} equals #{@division}"
	else
		@result = "Denomenator y must not equal to 0! Try again."
	end
	erb :calculate
end

get '/sqrt/:x' do
	x = params[:x].to_i
	if x != -x
		@sqrt = Math.sqrt(x).to_i
		@result = "Square root of #{x} is #{@sqrt}"
	else
		@result = "Cannot take square root of negative number! Try again."
	end
	erb :calculate
end

get '/power/:x/:y' do
	x = params[:x].to_i
	y = params[:y].to_i
	@power = x**y
	@result = "#{x} in #{y} power equals #{@power}"
	erb :calculate
end