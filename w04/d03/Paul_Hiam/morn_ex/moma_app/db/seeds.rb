# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.delete_all
  artist = Artist.create([
      {name:'Bob Ross', nationality: 'American'}, 
      {name:'Pablo Picasso', nationality:'Spanish'},
      {name:'Andrew Wyeth', nationality:'American'},
      {name:'August Renoir', nationality:'French'}
    ])
Painting.delete_all
  painting = Painting.create([
    {title:'Sun Fun Woodland!'},
    {title:'Guernica'},
    {title:"Emily's World"},
    {title:'The Boating Party'}
    ])
