require 'bundler/setup'
Bundler.require()

get '/' do 
  @names = []
  100.times { @names << Faker::Name.name }
  erb :index
end

