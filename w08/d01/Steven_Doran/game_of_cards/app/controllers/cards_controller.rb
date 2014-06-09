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