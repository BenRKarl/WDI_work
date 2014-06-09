class CardsController < ApplicationController

  def index

    cards = Card.all

    respond_to do |format|
      format.html
      format.json { render :json => cards.to_json }
    end

  end


end


# aces = Card.where(name: 'Ace')
# spades = Card.where(suit: 'Spades')
# jacks = Card.where(name: 'Jack')
# hearts = Card.where(suit: 'Hearts')
# by_names = Card.order('name')


# def flush
#   suit = ['Hearts', 'Diamonds', 'Clubs', 'Spades'].sample
#   Card.where(suit: suit).sample(5)
# end

# jacks_and_queens = Card.where('name = ? OR name = ?', 'Jack', 'Queen')
# threes_sevens = Card.where(name: '3'..'7')

def random_straight

  cards = ['Ace', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King']

  suit = ['Hearts', 'Diamonds', 'Clubs', 'Spades'].sample
  seed = Card.where(suit: suit).sample(1)
  straing = []

  if cards.index(seed) < 9
    seed_index = card.index(seed[0].name)
    seed_range = (seed_index..(seed_index + 4)).to_a
    seed_range.each do |index|
      straight << Card.where('name = ? AND suit = ?,' cards[index].to_s, seed[0].suit.to_s)
    end
  else
    puts "Straight is not possible"
  end

end










