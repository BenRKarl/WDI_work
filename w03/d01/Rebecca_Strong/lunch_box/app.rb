require 'bundler/setup'
Bundler.require

require_relative 'models/lunch_methods'

get '/' do
  redirect '/lunches'
end

get '/lunches' do
  @all_lunches = display_all

  erb :index

end

get '/lunches/new' do

  erb :show
  end

  get '/lunches/random' do

 lunch_hash = display_all.sample
 id = lunch_hash["id"]
 picked_count = lunch_hash["picked_count"].to_i
 new_count =picked_count +1
 count_it(id, new_count)

 lunch_hash["picked_count"] = new_count
 @all_lunches = []
 @all_lunches[0] = lunch_hash

  erb :index
  end

post '/lunches/create' do

lunch = params["lunch"]
restaurant = params["restaurant"]

insert_lunch(lunch, restaurant)
redirect '/lunches'
end
