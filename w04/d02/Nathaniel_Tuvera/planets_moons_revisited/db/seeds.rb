# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

earth = Planet.create({name: 'Earth', image_url: 'http://www.photoshopgurus.com/forum/attachments/general-photoshop-board/3134d1302575637t-well-i-give-up-can-someone-show-me-how-do-technique-planet_glow_00.png', diameter: 7918, mass: 5972000, life: true})
mars = Planet.create({name: 'Mars', image_url: 'http://www.cvadrat.com/imagebank/pngs/planetary/gallery3/Virtual%20Planets%20Mars%20Planet%2002.png', diameter: 6780, mass: 6390, life: false})
