# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Card.delete_all

suit = ['Clubs', 'Spades', 'Hearts', 'Diamonds']

name = [*(2..10), ['Jack', 'Queen', 'King','Ace']].flatten

for i in suit
  for j in name
    Card.create(name: j, suit: i)
  end
end

