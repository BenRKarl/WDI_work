require 'bundler'
Bundler.require

require_relative 'models/kittens'

require_relative 'config.rb' #runs the code that establishes our conxn to the database


# get '/' do
# end

# get '/kittens' do
# @kittens = Kitten.all
# erb :index
# end

get '/kittens/random' do
@kitten = Kitten.new({:width => rand(100..400), :height => rand(100..400)})
erb :random

end

get '/kittens' do
@kittens = Kitten.all
erb :index
end


post '/kittens' do
  kitten = Kitten.create(width: params[:width].to_i, height: params[:height].to_i)

redirect "/kittens"
end

