require 'bundler/setup'
Bundler.require

get '/name/:num' do 
  @name = []
  num = params[:num].to_i
  num.times { @name << Faker::Name.name }
  
  erb :index
end




