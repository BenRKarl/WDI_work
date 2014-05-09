# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# kittens = [[150,300],[200,300],[100,200],[150,250],[175,325],[233,476],[266,430],[100,150],[300,400],[234,454]]
# kittens.each { |w,h| Kitten.create(width: w, height: h)}


# deletes all the Kittens in the table before seeding it again
Kitten.delete_all

100.times do 
  width = rand(100..400)
  height = rand(100..400)
  url = "http://placekitten.com/#{width}/#{height}"
  Kitten.create(width: width, height: height, url: url)
end