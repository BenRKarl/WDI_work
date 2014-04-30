require 'bundler/setup'
Bundler.require

get '/' do
  @width = rand(400)
  @height = rand(400)
  @color1 = rand(255)
  @color2 = rand(255)
  @color3 = rand(255)
  erb :rectangles
end
