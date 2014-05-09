
require 'bundler/setup'
Bundler.require

require_relative "models/kitten"
require_relative "config.rb"

get '/' do
  redirect "/kittens/random"
end

get '/kittens/random' do
  @rand_width = rand(100..400)
  @rand_height = rand(50..400)
  @url = "http://placekitten.com/#{@rand_width}/#{@rand_height}"

  erb :index

end

get '/kittens' do
  kittens = Kitten.all
  @url = []
  kittens.each do |kitten|
    @url << "http://placekitten.com/#{kitten.width}/#{kitten.height}"
  end

  erb :show
end

post '/kittens' do
  width = params[:width]
  height = params[:height]
  Kitten.create({width: width, height: height})
  redirect "/kittens"
end
