require 'sinatra'
require 'sinatra/reloader'

get '/' do 
	"Enter a positive integer in the url"
end	

#get '/:num' do 
#	num = params[:num].to_i
#	@array = (1..1000).select { |x| x % num == 0 } #

#	erb :show
#end

get '/:num/:sample' do
	num = params[:num].to_i
	max = params[:sample].to_i
	@array = find_multiples(num, (1..max))

	erb :show
end


def find_multiples(x, array)
	multiples = array.select { |i| i % x == 0 } 
	multiples
end


