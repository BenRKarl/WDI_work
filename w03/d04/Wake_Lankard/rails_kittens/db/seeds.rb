# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

kittens =[['200', '300'],['150','600'],['450','200']]

kittens.each { |kitten| Kitten.create(height: kitten[0], width: kitten[1]) }