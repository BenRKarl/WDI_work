require 'bundler'
Bundler.require

require './submarine'


get '/' do
	redirect '/sailors'
end

	@proto_sub = Submarine.new	
	@proto_sailors.each do |sailor|
		@proto_sub.accept_sailor(sailor)
	end

get '/sailors' do
	@sailors = @proto_sub.sailors
	erb :index
end
