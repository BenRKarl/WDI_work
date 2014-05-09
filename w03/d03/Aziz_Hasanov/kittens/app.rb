require 'bundler'
Bundler.require

get '/' do
	redirect '/1'
end
# Matt's solution
# class Kitten
# 	attr_reader :url
# 	def initialize
# 		@url = "http://placekitten.com/#{rand(100..500)}/#{rand(100..500)}"
# 	end
# end

# get '/:num_kittens' do
# 	number = params[:num_kittens].to_i
# 	@kittens = num_kittens.times.map{ Kitten.new }
# end

get '/:num_kittens' do
	@number = params[:num_kittens].to_i.times
	width = rand(100..500).to_s
	height = rand(100..500).to_s
	@url = "http://placekitten.com/#{width}/#{height}"
	erb :index
end