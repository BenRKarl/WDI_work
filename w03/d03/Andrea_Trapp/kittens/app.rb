require 'bundler'
Bundler.require

require_relative 'models/kitten'


get '/' do 
  @kittens = []  
  @kittens << Kitten.new
  erb :index
end

get '/:num_kittens' do  
  @num_kittens = params[:num_kittens].to_i

  @kittens = []
  @num_kittens.times { @kittens << Kitten.new }  
  #@kittens = num_kittens.times.map{ Kitten.new }
  
  erb :index
end
