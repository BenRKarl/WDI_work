#THIS IS THE GO TO THE FOREST GAME!!
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :map
end

get '/location/:local' do
  @local = params[:local]
  @found_item = ['gold','magic spells','soup'].sample
  erb :location
end


=begin
THIS IS IN THE MAP.ERB
<h3>Start your ancient map quest here</h3>
<h4>by wdi-proto</h4>

<a href="/location/forest"> Venture into the Forest</a><br>
<a href="/location/sea"> Surfing Time</a><br/>

LOCATION ERB
- needs to be in views directory
- and is needed for each page to link
<h3> You are in the <%= @local %> </h3>
- when local is the last string on the pg title in the html file code (request/response/page/thingy?)
-% give spaces in the location list thingy
<h4> <%= @found_item %> </h4>




=end
