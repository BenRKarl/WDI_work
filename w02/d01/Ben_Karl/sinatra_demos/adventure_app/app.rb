require "sinatra"
require "sinatra/reloader"

get "/" do
  erb :map
end

get "/location/:local" do
  @local = params[:local]
  @found_item = ["gold", "magic spells", "a wizard", "puppies"].sample
  erb :location
end
