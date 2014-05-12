Square.delete_all
4.times do
  width   = 200
  height  = 200
  color = red
  url     = "http://i.imgur.com/neu92z7.jpg/#{width}/#{height}"
  Square.create(width: width, height: height, color: color, url: url)
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
