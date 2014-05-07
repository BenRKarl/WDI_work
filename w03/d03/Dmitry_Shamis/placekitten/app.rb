require 'bundler'
Bundler.require

require_relative './models/kitten'

get '/:num_kittens' do
  num = params[:num_kittens].to_i
  @kittens = num.times.map{ Kitten.new }
  erb :index
end
