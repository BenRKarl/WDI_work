require 'bundler'
Bundler.require(:default)

get '/rectangle/:num' do
  @rectangles = params[:num].to_i.times.map do
    width = rand(100..300).to_s + "px"
    height = rand(100..300).to_s + "px"
    color = ["yellow", "red", "blue"].sample
    {width: width, height: height, color: color}
  end
  erb :rectangle
end

