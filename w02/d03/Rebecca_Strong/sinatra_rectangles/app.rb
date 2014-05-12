require 'bundler/setup'
Bundler.require (:default)


get '/rectangle' do
# width = rand(100..300).to_s +"px"
# height = rand(100..300).to_s +"px"
# color = rand["yellow", "red", "blue"].to_s +"px"
redirect to "/rectangle/1"

erb :rectangle
end

get '/rectangle/:num' do

  @rectangles = params[:num].to_i.times.map do
    #could substitute below with neater, single get Rectangles.new
    width = rand(100..300). to_s + "px"
    height = rand(100..300). to_s + "px"
    color = ["yellow", "orange", "yellow", "green", "red", "blue"].sample
    binding.pry
    {width: width, height: height, color: color}

  end
  binding.pry

  erb :rectangle
end
