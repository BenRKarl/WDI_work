
class CardsController < ApplicationController

  def index
    cards = Card.all
    #cards = Card.get_aces
    #cards = Card.get_spades
    #cards = Card.get_jacks
    #cards = Card.get_hearts
    #cards = cards.order(:name)
    #cards = Card.get_flush
    #cards = Card.get_jq
    #cards = Card.three_seven
    #cards = Card.get_straight
    cards = cards.sample(5)
    suits = []
    cards.each do |card|
      suits << card.suit
    end
    @flush = Card.flush?(suits)
    respond_to do |format|
      format.html
      format.json {render json: cards.to_json}
    end
  end

end
