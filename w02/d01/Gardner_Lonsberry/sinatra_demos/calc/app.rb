require 'sinatra'
require 'sinatra/reloader'


# url = 'http://localhost:4567/add/x/y'
# x = url.scan (/add(\w+)/)
# y = url.scan (/x(\w+)/)

get '/add/:x/:y' do
  @sum = params[:x].to_i + params[:y].to_i
  erb :add
end

get '/difference/:x/:y' do
  @difference = params[:x].to_i - params[:y].to_i
  erb :difference
end

get '/quotient/:x/:y' do
  @quotient = params[:x].to_i / params[:y].to_i
  erb :quotient
end

get '/product/:x/:y' do
  @product = params[:x].to_i * params[:y].to_i
  erb :product
end

get '/squareroot/:x' do
  @squareroot = Math.sqrt(params[:x].to_i)
  erb :squareroot
end

# get '/power/:x/:y' do
#   @power = (1..a).to_a.detect {|n| 2**n >=a}

#   @power = params[:x] ** params[:y].to_i
#   erb :power
# end
