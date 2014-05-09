require 'pg'
require 'active_record'

ActiveRecord::Base.establish_connection(
{ :adapter => "postgresql",
	:database => "photo_mgmt"
})

class Album < ActiveRecord::Base
	has_many :photos
end

class Photo < ActiveRecord::Base
	belongs_to :album
end


new_album = Album.create({album: 'Nessa''s 21st birthday'})
photo1    = Photo.create({url: '/nessa21/cake.jpg'})
photo2    = Photo.create({url: '/nessa21/champange_toast.jpg'})
new_album.photos << photo1
new_album.photos << photo2

puts new_album.album
puts photo1.url
