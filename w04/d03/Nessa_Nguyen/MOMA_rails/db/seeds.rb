vangogh = Artist.create({name: 'Vincent van Gogh', nationality: 'Dutch'})
vangogh.paintings << Painting.create({title: 'Starry Night'})


picasso = Artist.create({name: 'Pablo Picasso', nationality: 'Spanish'})
picasso.paintings << Painting.create({title: 'Guernica'})

pollock = Artist.create({name: 'Jackson Pollock', nationality: 'American'})
pollock.paintings << Painting.create({title: 'No. 5'})

Artist.create({name: 'Salvadore Dali', nationality: 'Spanish'})
