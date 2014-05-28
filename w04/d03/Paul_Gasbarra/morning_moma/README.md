active_record_commands.txt.



dali = Artist.create(name: "Salvador Dali", nationality: "Spanish")
painting = Painting.create(name: "The Persistence of Memory")
Artist.all
Paintings.all
Artist.id(2)
Artist.find_by name: 'Vincent Van Gogh'
Artist.where nationality: 'Spanish'
Painting.find_by id '1'
Painting.find_by name "Guernica"
Artist.find_by name: "Pablo Picasso"
