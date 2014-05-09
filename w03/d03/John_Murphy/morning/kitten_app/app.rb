require 'bundler'
Bundler.require

get '/' do
  redirect '/1'
end

get '/:num_kittens' do
  @num = params[:num_kittens].to_i
  erb :index
end
