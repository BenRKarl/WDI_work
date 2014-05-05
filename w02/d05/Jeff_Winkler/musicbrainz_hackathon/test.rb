
require './lib/music_methods'
require 'httparty'
require 'musicbrainz'


#artists = Musicbrains.find('prince')


test = MusicBrainz::Artist.find("b071f9fa-14b0-4217-8e97-eb41da73f598")

puts test

