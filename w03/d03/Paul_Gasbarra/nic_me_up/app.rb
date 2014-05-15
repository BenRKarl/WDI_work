require 'bundler'
Bundler.require

get '/' do
  @num_nics = 1
  erb :index
end

get '/nics' do
  @num_nics = params[:nics].to_i
  erb :index
end
