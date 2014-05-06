
require 'bundler/setup'
Bundler.require

require_relative 'models/lunch_methods'

get '/' do
  redirect '/lunches'
end

get '/lunches' do
  @all_lunches = disp_all
  @random_flag = 0
  @message = "Full List of Lunches"
  erb :index
end

get '/lunches/new' do
  erb :show
end

get '/lunches/random' do
  lunch_hash = disp_all.sample
  id = lunch_hash["id"]
  picked_count = lunch_hash["picked_count"].to_i
  new_count = picked_count+1
  count_it(id, new_count)

  lunch_hash["picked_count"] = new_count
  @all_lunches = []
  @all_lunches[0] = lunch_hash

  @random_flag = 1
  @message = "Random Pick"

  erb :index
end

post '/lunches/create' do
  lunch = params["lunch"]
  resto = params["resto"]

  new_lunch(lunch, resto)

  redirect '/lunches'
end

get '/remove/:id' do

  id = params["id"]
  del_lunch(id)
  redirect '/lunches'

end




