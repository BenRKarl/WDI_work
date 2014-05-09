require 'bundler'
Bundler.require

require './models/kitten.rb'
require './config.rb'



def rand_kitten
  url = "http://www.placekitten.com/"
  open('image.png', 'wb') do |height|
  url + 

end


url="http://www.placekitten.com/"
open('image.png', 'wb') do |file|
  file << open(url + d.to_s).read
end


get '/' do
erb :index
end

get '/kittens/:height/:width' do
@height = params[:height]
@width = params[:width]
:show
end

get '/kittens/random' do 


end

post '/kittens/random/new' do
  redirect '/kittens'
end



