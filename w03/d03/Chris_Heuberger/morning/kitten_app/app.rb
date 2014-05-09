require 'bundler'
Bundler.require

require './models/kitten.rb'

get '/' do
  erb :index
  redirect '/1'
end

get '/:num_kittens' do
  @num_kittens = params[:num_kittens].to_i
  @kitten = Kitten.new
  erb :index
end
