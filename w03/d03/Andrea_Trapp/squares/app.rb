require 'bundler'
Bundler.require


get '/' do 
  @num = 1
  erb :index
end

get '/:num_squares' do 
  @num = params[:num_squares].to_i 
  erb :index
end
