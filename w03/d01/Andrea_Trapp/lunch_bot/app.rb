require 'bundler'
Bundler.require

require_relative 'models/lunch'

get '/' do 
  redirect '/lunches'
end

# index
get '/lunches' do 
  @lunches = Lunch.all 
  erb :index
end

# new
get '/lunches/new' do
  erb :new
end

# create
post '/lunches/create' do
  lunch_name = params['lunch_name']
  restaurant = params['restaurant']
  new_lunch = Lunch.create({'lunch_name'=> lunch_name, 'restaurant'=>restaurant})
  # redirect "/lunches/#{new_lunch.id}"
  redirect "/lunches"
end

# random 
get '/lunches/random' do 	
  @lunches = Lunch.all  
  random_id = @lunches.map { |lunch| lunch.id }.sample
  random_lunch = Lunch.random(random_id)
  redirect "/lunches/#{random_id}"  
end

# show
get '/lunches/:id' do
  @lunch = Lunch.find(params[:id]) 
  erb :show
end

# # edit
# get '/lunches/:id/edit' do 
#   id = params[:id]
#   @lunch = Lunch.find(id)
#   erb :edit
# end

# # update
# post '/lunches/:id' do	
#   id = params[:id]
#   lunch_name = params['lunch_name']
#   restaurant = params['restaurant']
#   picked_count = params['picked_count']  
#   updated_lunch = Lunch.update({'id'=>id, 'lunch_name'=> lunch_name, 'restaurant'=>restaurant, 'picked_count'=>picked_count})
#   redirect "/lunches/#{updated_lunch.id}"  
# end
