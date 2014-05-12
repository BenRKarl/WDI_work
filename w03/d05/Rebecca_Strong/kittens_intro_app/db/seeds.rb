Kitten.delete_all
# gives new set of kittens each time
100.times do
  width = rand(100..400)
  height = rand(100..400)
  url = "http://placekitten.com/#{width}/#{height}"
Kitten.create(width: width, height: height, url: url)
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
