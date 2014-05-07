require 'bundler'
Bundler.require

get '/:num_kittens' do
  @num_kittens = params[:num_kittens].to_i

  erb :index
end
