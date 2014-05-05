require 'bundler'
Bundler.require

get '/rectangle' do
  'hello'
  # @width = rand(100..300).to_s + "px"
  # @height = rand(100..300).to_s + "px"
  # @color = ['blue', 'green', 'red', 'yellow'].sample
  # erb :rectangle
end

# get '/rectangle/:num' do
#   @rectangles = params[:num].to_i.times.map do
#     width = rand(100..300).to_s + "px"
#     height = rand(100..300).to_s + "px"
#     color = ['blue', 'green', 'red', 'yellow'].sample
#     {width: width, height: height, color: color}
#     erb :rectangle
#   end
#   binding.pry
# end
