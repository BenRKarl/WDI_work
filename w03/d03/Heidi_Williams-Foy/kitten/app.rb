require 'bundler'
Bundler.require

get '/'
	@num_kittens = 5
	erb :index
end