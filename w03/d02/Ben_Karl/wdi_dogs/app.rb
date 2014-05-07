require "bundler"
Bundler.require

require_relative './models/dog'
require_relative './config'

# Makes inquiry to dog breed API to retrieve URL to breed standards
#
# Breaks Sinatra if you don't enter a breed name verbatim...
def breed_standard_url(dog)
  breeds = HTTParty.get('https://opendata.socrata.com/api/views/2es9-pgpu/rows.xml?accessType=DOWNLOAD')
  breeds["response"]["row"]["row"].find {|x| x['breed'] == dog+' ' }["web_link"]["url"]
end

get "/" do
  redirect "/dogs"
end

#index
get "/dogs" do
  @dogs = Dog.all
  erb :index
end

#new
get '/dogs/new' do
  erb :new
end

#create
post "/dogs" do
  dog = Dog.create({
    name: params["name"],
    age: params["age"],
    breed: params["breed"]
  })
  dog.save
  redirect "/dogs/#{ dog.id }"
end

#show
get "/dogs/:id" do
  @dog = Dog.find(params[:id])
  erb :show
end

# edit
get "/dogs/:id/edit" do
  @dog = Dog.find(params[:id])
  erb :edit
end

put "/dogs/:id" do
  dog = Dog.find(params[:id])
  dog.name = params[:name]
  dog.age = params[:age]
  dog.breed = params[:breed]
  dog.save
  redirect "/dogs"
end

delete "/dogs/:id" do
  Dog.delete(params[:id])
  redirect "/dogs"
end
