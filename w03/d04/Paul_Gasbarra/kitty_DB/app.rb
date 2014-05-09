require 'bundler'
Bundler.require

require_relative 'models/kitten'

require_relative 'config.rb'

get '/'  do
  redirect '/kittens/random'
end

get '/kittens/random' do
  @kitten = Kitten.new({:width => rand(100..400), :height => rand(100..400)})
  erb :index
end

post 'kittens' do
  kitten = params[:url]

