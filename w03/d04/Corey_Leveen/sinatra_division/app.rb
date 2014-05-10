require 'bundler'
Bundler.require

get '/' do
end

get '/:num' do
  @num = params[:num].to_i
  erb :index
end
