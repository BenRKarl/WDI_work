# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'httparty'
offset = 0
10.times do 
  data = HTTParty.get("http://www.colourlovers.com/api/palettes?numResults=100&offset=#{offset}")
  palettes = data["palettes"]["palette"]
  palettes.each do |palette|
    Palette.create(title: palette["title"], colors: palette["colors"]["hex"])
  end
  offset += 100
end