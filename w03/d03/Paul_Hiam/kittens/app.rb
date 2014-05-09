require 'bundler/setup'
Bundler.require

get '/' do
	erb :index
end
get '/go' do
  redirect '/:num_kittens'
end

get '/:num_kittens' do

@num = params[:num_kittens].to_i
  erb :num
@width = rand(900)+10
@height = rand(900) +5
erb :num
end