require 'bundler/setup'
Bundler.require


require_relative 'models/kitten'
require_relative 'config.rb'

get '/kittens' do
	@kittens = Kitten.all

  erb :index
end

get '/kittens/random' do
  @kitten = Kitten.new({:width => rand(100..1000), :height => rand(100..1000)})
  erb :random
end
post '/kittens' do

  Kitten.create(width: params[:width].to_i, height: params[:height].to_i)
  redirect '/kittens'

end
