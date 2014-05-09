require 'bundler'
Bundler.require

require_relative 'models/place'
require_relative 'models/trip'
require_relative 'models/record'

require_relative 'config.rb'



# index
get '/' do
  erb :index
end

############### Routes for places ###############

# index
get '/places' do
  @places = Place.all
  erb :'places/index'
end

# new
get '/places/new' do
  erb :'places/new'
end

# create
post '/places' do
  name = params[:name]
  countrycode = params[:countrycode]
  new_place = Place.create({name: name, countrycode: countrycode})
  redirect "/places/#{new_place.id}"
end

# show
get '/places/:id' do
  @place = Place.find(params[:id])
  erb :'places/show'
end

# edit
get '/places/:id/edit' do
  @place = Place.find(params[:id])
  erb :'places/edit'
end

put '/places/:id' do
  place = Place.find(params[:id])
  place.name = params[:name]
  place.countrycode = params[:countrycode]  
  place.save
  redirect "/places/#{place.id}"
end

delete '/places/:id' do
  Place.delete(params[:id])
  redirect '/places'
end

############### Routes for trips ###############

# index
get '/trips' do
  @trips = Trip.all
  erb :'trips/index'
end

# new
get '/places/:id/trips/new' do
  @place = Place.find(params[:id])
  erb :'trips/new'
end

# create
post '/places/:id/trips' do
  place = Place.find(params[:id])
  title = params[:title]
  year = params[:year]
  new_trip = Trip.create({title: title, year: year})
  place.trips << new_trip  
  redirect "/places/#{params[:id]}"
end

# show
get '/trips/:id' do
  @trip = Trip.find(params[:id])
  erb :'trips/show'
end

# edit
#get '/places/:place_id/trips/:trip_id/edit' do
get '/trips/:trip_id/edit' do
 # @place = Place.find(params[:place_id])
  @trip = Trip.find(params[:trip_id])
  erb :'trips/edit'
end

#put '/places/:place_id/trips/:trip_id' do
put '/trips/:trip_id' do
  trip = Trip.find(params[:trip_id])
  trip.title = params[:title]
  trip.year = params[:year]
 # trip.place_id = params[:place_id]    
  trip.save
  redirect "/trips/#{trip.id}"
end

delete '/places/:place_id/trips/:trip_id' do
  Trip.delete(params[:trip_id])
  redirect '/places/#{params[:place_id]}'
end

############### Routes for records ###############

# index
get '/records' do
  @records = Record.all
  erb :'records/index'
end

# new
get '/trips/:id/records/new' do
  @trip = Trip.find(params[:id])
  erb :'records/new'
end

# create
post '/trips/:id/records' do
  trip = Trip.find(params[:id])
  title = params[:title]
  description = params[:description]
  entry_date = params[:entry_date]
  new_record = Record.create({title: title, description: description, entry_date: entry_date})
  trip.records << new_record  
  redirect "/trips/#{params[:id]}"
end

# show
get '/records/:id' do
  @record = Record.find(params[:id])
  erb :'records/show'
end

# edit
#get '/trips/:trip_id/records/:record_id/edit' do
get '/records/:record_id/edit' do
 # @trip = Trip.find(params[:trip_id])
  @record = Record.find(params[:record_id])
  erb :'records/edit'
end

#put '/trips/:trip_id/records/:record_id' do
put '/records/:record_id' do
  record = Record.find(params[:record_id])
  record.title = params[:title]
  record.description = params[:description]
  record.entry_date = params[:entry_date]
 # record.trip_id = params[:trip_id]    
  record.save
  redirect "/records/#{record.id}"
end

delete '/trips/:trip_id/records/:record_id' do
  Record.delete(params[:record_id])
  redirect '/trips/#{params[:trip_id]}'
end




