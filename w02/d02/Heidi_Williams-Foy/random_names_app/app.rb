require 'bundler/setup'
Bundler.require()


get '/' do

	@names = []

	100.times do
		@names << Faker::Name.name
	Faker::Name.name
	end

	erb :index
end