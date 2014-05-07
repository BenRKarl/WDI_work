require 'bundler'
Bundler.require


#index redirect
get '/' do
  @num_squares = 1
  erb :index
  redirect '/1'
  end

get '/:num_squares' do
  @num_squares = params[:num_squares].to_i
  erb :index
  end
