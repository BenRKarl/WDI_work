require 'bundler'
Bundler.require

get '/' do
  erb :index
  redirect '/1'
end

get '/:num_squares' do
  @num_squares = params[:num_squares].to_i
  erb :index
end
