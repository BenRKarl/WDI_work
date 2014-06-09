class CardsController < ApplicationController

 def index
  card = Card.all
   respond_to do |format|
    format.html
    format.json {render json: card}
  end
end
end
