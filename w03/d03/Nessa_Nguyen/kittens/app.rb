require 'bundler'
Bundler.require


get '/' do 
	"Enter number of kittens you want to show in the url."
end

get '/:num_kittens' do
	@num = params[:num_kittens].to_i
	@width  
	@height 
	
	erb :show
end
