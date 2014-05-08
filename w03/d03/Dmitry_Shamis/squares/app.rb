require 'bundler'
Bundler.require

get '/' do
  @num = 1
  erb :index
  redirect '/1'
end

get '/:num' do
  @num = params[:num].to_i
  erb :index
end
