class SquaresController < ApplicationController

 def index
  @squares = Square.all
 end

  def new
    #show form
  end

  def create
    length = params[:side_length]
    radius = params[:border_radius]
    color = params[:color]
    Square.create(side_length:length, border_radius:radius, color:color)
    redirect_to '/squares'

  end

end
