require 'bundler/setup'
Bundler.require(:default)

get '/rectangle' do 
  width = rand(100..300).to_s + "px"
  height = rand(100..300).to_s + "px"
  color = ["yellow", "red", "blue", "green"].sample
  @rectangles = [{width: width, height: height, color: color}]
  erb :rectangle
end

get '/rectangle/:num' do 
  @rectangles = params[:num].to_i.times.map do 
    width = rand(100..300).to_s + "px"
    height = rand(100..300).to_s + "px"
    color = ["yellow", "red", "blue", "green"].sample
    {width: width, height: height, color: color}
  end
  erb :rectangle
end