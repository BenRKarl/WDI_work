# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

suitArr = ["hearts", "clubs","diamonds", "spades"]
nameArr = ["ace", "two", "three", "four", "five","six","seven", "eight,", "nine", "ten", "jack", "queen", "king"]

suitArr.each do |suit|
  nameArr.each do |name|
    Card.create({ name: name, suit: suit})
  end
end
