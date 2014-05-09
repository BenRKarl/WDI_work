require 'bundler'
Bundler.require


get '/' do 

	erb :index
end


get '/:num_squares' do
	@num = params[:num_squares].to_i
  @color = ['red', 'blue', 'purple', 'yellow', 'pink', 'limegreen', 
 	'chartreuse', 'green', 'black', 'lightblue', 'turquoise',
 	'orange'].sample
 	
	erb :show
end
