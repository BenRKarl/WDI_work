require 'bundler'
Bundler.require

require_relative 'models/kitten'
# def  Kitten
# @kitten = kitten

# end



# get '/:num_kittens' do
# @kitten = kitten.params[:kitten.times]
#   end

# class Kitten
#   def initialize
#     @height
#     @width
#   end

#   def self.random
#     @height = rand(100..500)
#     @width = rand(100..500)
#     "http://placekitten.com/#{@width}/#{@height}"


get '/:num_kittens' do
  @num_kittens = params[:num_kittens].to_i
  @kittens = num_kittens.times.map { Kitten.new }
end
