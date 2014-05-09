require 'bundler'
Bundler.require

get '/' do
  @num_kittens = 1
  erb :index
end

get '/:num_kittens' do
  @num_kittens = params[:num_kittens].to_i
  erb :index
end
