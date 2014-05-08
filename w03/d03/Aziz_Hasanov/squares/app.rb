require "bundler"
Bundler.require

get '/' do
	# erb :index
	redirect '/1'
end

get '/:num_squares' do
	@number = params[:num_squares].to_i.times
	erb :index
end