require 'bundler/setup'
Bundler.require

require_relative "models/musician"
require_relative "models/song"
require_relative "config.rb"

get '/' do
  redirect '/musicians'
end




#------------------------------------------------------------
# Create:


get '/musicians/new' do
  # show form for new musician input
  # and submit a post request
  erb :'musicians/new'
end

post '/musicians' do
  name = params[:name]
  new_musician = Musician.create({name: name})
  redirect to "/musicians/#{new_musician.id}"
end

get '/musicians/:id/songs/new' do
  @m_id = params[:id]
  erb :'songs/new'
end

post '/musicians/:id/songs' do
  name = params[:name]
  id = params[:id]
  Song.create({name: name, musician_id: id})
  redirect to "/musicians/#{id}"
end

#---------------------------------------------------------------
# Read:

get '/musicians' do
  @musicians = Musician.all
  erb :index
end

get '/musicians/:id' do
  id = params[:id]
  @musician = Musician.find(id)
  erb :'musicians/show'
end

#-----------------------------------------------------------------------
# Update:

get '/musicians/:id/edit' do
  @id = params[:id]
  @musician = Musician.find(@id)
  erb :'musicians/edit'
end

put '/musicians/:id' do
  id = params[:id]
  musician = Musician.find(id)
  name = params[:name]
  musician.name = name
  musician.save
  redirect to "/musicians/#{id}"
end

get '/musicians/:m_id/songs/:s_id/edit' do
  @m_id = params[:m_id]
  @s_id = params[:s_id]
  @song = Song.find(@s_id)
  erb :'songs/edit'
end

put '/musicians/:m_id/songs/:s_id' do
  m_id = params[:m_id]
  s_id = params[:s_id]
  song = Song.find(s_id)
  song.name = params[:name]
  song.save
  redirect to "/musicians/#{m_id}"
end

#----------------------------------------------------------------------------------
# Delete:

delete '/musicians/:id' do
  m = Musician.find(params[:id])

  m.songs.each do |song|
    Song.delete(song.id)
  end

  Musician.delete(params[:id])

  redirect to '/musicians'
end

delete '/musicians/:m_id/songs/:s_id' do
  s_id = params[:s_id]
  Song.delete(s_id)
  redirect to '/musicians'
end
