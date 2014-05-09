require 'bundler'
Bundler.require

require_relative './config.rb'
require_relative './models/kitten'

get '/' do
  @height = rand(50..500)
  @width = rand(50..500)

  erb :random

end

post '/kitten' do
  @height = params[:height]
  @width = params[:width]

  Kitten.create({ height: @height, width: @width })

  redirect "/index"

end

get '/index' do
  @kittens = Kitten.all

  erb :index
end
