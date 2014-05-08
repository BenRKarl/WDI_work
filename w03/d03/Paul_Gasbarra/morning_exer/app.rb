require 'bundler'
Bundler.require

get '/' do
 @squares = 1
 erb :index
end

get '/:num_squares' do
  @squares = params[:num_squares].to_i
  erb :index
end
