require 'bundler/setup'
Bundler.require

get '/' do
  @name = Faker::Name.name
  erb :index
end

get '/names_list/:num' do
  @num = params[:num].to_i
  @names = []
  @num.times {@names << Faker::Name.name}
  erb :names_list
end
