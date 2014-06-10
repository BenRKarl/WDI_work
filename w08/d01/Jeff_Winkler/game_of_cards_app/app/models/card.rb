class Card < ActiveRecord::Base

  def self.get_aces
    aces = Card.where(name: 'Ace')
  end

  def self.get_jacks
    aces = Card.where(name: 'Jack')
  end

  def self.get_spades
    spades = Card.where(suit: 'spades')
  end

  def self.get_hearts
    spades = Card.where(suit: 'hearts')
  end

  def self.get_flush
    suits = ["hearts", "clubs", "spades", "diamonds"]
    which_suit = suits.sample
    cards = Card.where(suit: which_suit)
    return cards.sample(5)
  end

  def self.get_jq
    cards = Card.where(name: ['Jack', 'Queen'])
  end

  def self.three_seven
    cards = Card.where(name: "3".."7")
  end

  def self.get_straight
    suits = ["hearts", "clubs", "spades", "diamonds"]
    which_suit = suits.sample
    cards = Card.where(suit: which_suit)
    double_cards = []
    cards.each do |card|
      double_cards << card
    end
    cards.each do |card|
      double_cards << card
    end

    start = rand(10)


    flush_version =  double_cards.slice(start,5)

    any_version = []

    flush_version.each do |card|
      all_suits = Card.where(name: card.name)
      this_suit = all_suits.sample
      any_version.push(this_suit)
    end

    return any_version


  end


end
