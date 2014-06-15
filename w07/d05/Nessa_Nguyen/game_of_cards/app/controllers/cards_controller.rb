class CardsController < ApplicationController
  def index
    cards = Card.random_straight
    respond_to do |format|
      format.html
      format.json { render json: cards }
    end
  end
end
