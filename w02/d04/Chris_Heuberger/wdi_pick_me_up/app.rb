require 'Bundler/setup'
Bundler.require

def rand_color
  rand_color = (('A'..'F').to_a + (0..9).to_a).sample
end

def rand_hex_color
  6.times.map{rand_color}.join()
end

compliments  = [
    'You look great.',
    'You don\'t need to take showers. You smell fantastic.',
    'The universe is rooting for you.'
]

get '/' do

  @compliment = compliments.sample
  @color = rand_hex_color

  erb :compliment
end

post '/names' do
  name = params[:name]
  redirect "/names?name=#{name}"
end

get '/names' do
  @name = params[:name]
  erb :compliment
end

# get '/rectangle' do
#   width  = rand(100..300).to_s + "px"
#   height = rand(100..300).to_s + "px"
#   color  = ["yellow", "red", "blue"].sample
#   @rectangles = [{width: width, height: height, color: color}]
#   erb :rectangle

#   # redirect to "/rectangle/1"
# end

# get '/rectangle/:num' do

#   @rectangles = params[:num].to_i.times.map do
#     # Rectangle.new
#     width  = rand(100..300).to_s + "px"
#     height = rand(100..300).to_s + "px"
#     color  = ["yellow", "red", "blue"].sample
#     {width: width, height: height, color: color}
#   end

#   erb :rectangle
# end

