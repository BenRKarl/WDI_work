# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

colors = [["onion skin", "E3CD9A"],["Blood gold", "E88C18"],["I'm Alone", "D4537B"],["Hully Gully", "945076"]]
colors.each do |color| 
  Color.create({color_name: color[0], hex: color[1]})
end
