
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cards = ['ace',2,3,4,5,6,7,8,9, 'jack', 'queen', 'king']
suits = ['heart','spade', 'club', 'diamond']

suits.each do |suit|
  cards.each do |card|
    Card.create(name: card, suit: 'suit')
  end
end

