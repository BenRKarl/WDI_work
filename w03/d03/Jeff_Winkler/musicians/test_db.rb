
require 'pg'
require 'active_record'

db = "music"

ActiveRecord::Base.establish_connection("postgres://localhost/#{db}")

class Musician < ActiveRecord::Base
  has_many :songs
end

class Song < ActiveRecord::Base
  belongs_to :musician
end

prince = Musician.create({name: 'Prince'})
wdc    = Song.create({name: 'When Doves Cry'})
ac     = Song.create({name: 'Alphabet City'})
prince.songs << wdc
prince.songs << ac

whst   = Musician.create({name: 'The White Stripes'})
dl     = Song.create({name: 'Dead Leaves on the Dirty Ground'})
us     = Song.create({name: 'Ugly as I Seem'})
whst.songs << dl
whst.songs << us

em     = Musician.create({name: 'Eminem'})
rs     = Song.create({name: 'Real Slim Shady'})
ly     = Song.create({name: 'Lose Yourself'})
em.songs << rs
em.songs << ly

all_musicians = Musician.all

puts all_musicians

all_musicians.each do |x|
  x.songs.each do |y|
    puts "#{x.name} wrote #{y.name}"
  end
end




