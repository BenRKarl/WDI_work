require 'bundler/setup'
Bundler.require


# random
# select book
# parse
# store

get '/' do
erb :root
end

get '/books/:name' do
	@name = params[:name]
	erb :show
end