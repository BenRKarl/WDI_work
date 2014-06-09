# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



suits = ["clubs", "diamonds", "spades", "hearts"]
names = ["2","3","4","5","6","7","8","9","10","jack", "queen", "king", "ace"]

suits.each do |suit|
  names.each do |name|
    Card.create(suit: suit, name: name)
  end
end
# cards = (2..10)

# cards.each do |n|
#   n.to_s
#   Card.create(name: n, suit: 'Spades')
#     Card.create(name: n, suit: 'Hearts')
#       Card.create(name: n, suit: 'Clubs')
#         Card.create(name: n, suit: 'Diamonds')
#       end
