require "sinatra"
require "sinatra/reloader"

get "/" do 
  erb :map
end

get "/location/:locale" do
  @locale = params[:locale]
  @found_item = ["gold", "magic spells", "soup"].sample
  erb :location
end




