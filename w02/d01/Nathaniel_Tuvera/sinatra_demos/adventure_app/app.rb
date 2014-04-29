require 'sinatra'
require 'sinatra/reloader'
# embedded ruby
get '/' do
  erb :map
end


get '/location/:local' do
  @local = params[:local]
  @found_item = ["gold", "magic spells", "soup"].sample
  erb :location

end
