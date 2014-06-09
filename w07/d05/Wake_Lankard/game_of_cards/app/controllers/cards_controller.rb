class CardsController < ApplicationController

  def index
    @cards = Card.all 
    respond_to do |format|
      format.json { render :json => @cards.to_json }
      format.html
    end


  end


end