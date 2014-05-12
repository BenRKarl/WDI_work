require 'bundler'
Bundler.require

get '/' do 


erb :index
end 

get '/:num_squares' do 
@num_squares = params[:num_squares].to_i

erb :index

end 