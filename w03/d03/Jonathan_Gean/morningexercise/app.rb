require 'bundler'
Bundler.require

get '/' do
  'WOW'
end


get '/:num_squares' do
  @num_squares = params[:num_squares]
  erb :index
end
