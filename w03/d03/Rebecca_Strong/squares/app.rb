require 'bundler'
Bundler.require

get '/' do

end

# get '/squares' do
# @square = Square.all
# erb :index
# end

# get '/squares/new' do
#   erb :new
# end

# get '/:num_squares/edit' do
#  @square = square.find(params[3, 6])
# @square = circle
#  erb :edit

 # matt's solution
#  get '/:num_squares' do
#  @square = square.params[:num_squares].to_i
#  # bcs can't call .times on a string, you have to use .to_i
# erb :index
# end
# matt's solution from github
require 'bundler'
Bundler.require

get '/' do
  @num_squares = 1
  erb :index
end

get '/:num_squares' do
  @num_squares = params[:num_squares].to_i
  erb :index
end
