kittens = ([{name: 'Fluffy', url: "http://placekitten.com/200/300"}, {name:'Whiskers', "url: http://placekitten.com/250/300"}])

protos.each {|p| Proto.create(name: p)}

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
