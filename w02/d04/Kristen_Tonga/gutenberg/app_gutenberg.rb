require 'bundler/setup'
Bundler.require

get '/' do
  erb :index
end

get '/books/:name' do
  params[:name]
  erb :show
end
