# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    Card.delete_all
    suits = ['Hearts', 'Spades', 'Diamonds', 'Clubs']

    suits.each do |suit|
      [*2..10].each do |nmCrd|
        name = nmCrd.to_s
        Card.create(name: name, suit: suit)
      end
      ['Jack', 'Queen', 'King', 'Ace'].each do |royal|
        Card.create(name: royal, suit: suit)
      end

    end
    