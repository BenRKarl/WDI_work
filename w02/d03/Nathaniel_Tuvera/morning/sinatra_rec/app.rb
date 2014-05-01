require 'bundler'
Bundler.require
# My solution
# get '/rectangle' do
#   @color  = ["red", "green", "blue","yellow"].sample
#   @width = rand(100)
#   @height  = rand(100)
#   erb :rectangle
# end

get '/rectangle' do
  @width  = rand(100..300).to_s + "px"
  @height = rand(100..300).to_s + "px"
  @color  = ["yellow", "red", "blue", "green"].sample
  # redirect = '/rectangle/1'
  erb :rectangle
end

get '/rectangle/:num' do

  @rectangles = (params[:num].to_i).times.map do
    width   = rand(100..300).to_s + "px"
    height  = rand(100..300).to_s + "px"
    color   = ["yellow", "red", "blue", "green"].sample
    {width: width, height: height, color: color}
    binding.pry
  erb :rectangle
  end
end


