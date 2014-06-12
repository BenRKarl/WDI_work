class CardsController < ApplicationController

  def index
    cards = Card.all
    respond_to do |format|
    format.html
    format.json {render json: cards}
    end
  end

  def flush
    cards = Card.all
    flushcards = []
    Card.where(:suit == :suit) do 
      binding.pry
      card. << flushcards
    end
  end

end
