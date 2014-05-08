require 'bundler'
Bundler.require

require_relative 'models/car'


ActiveRecord::Base.establish_connection(
  {
    :database => 'car_app_db',
    :adapter => 'postgresql'
  }
)


get '/' do
  erb :index
end






# index
get '/cars' do
  @cars = Car.all
  erb :'cars/index'
end



# new
get '/cars/new' do
  erb :'cars/new'
end

# create
post '/cars' do
  car_make = params[:car_make]
  car_speed = params[:car_speed].to_i
  new_car = Car.create({make: car_make, speed: car_speed})
  redirect "/cars/#{ new_car.id }"
end



# show
get '/cars/:id' do
  @car = Car.find(params[:id])
  erb :'cars/show'
end




# edit
get '/cars/:id/edit' do
end

# update
put '/cars/:id' do
end



# delete
delete '/cars/:id' do
  Car.delete(params[:id])
  redirect '/cars'
end
