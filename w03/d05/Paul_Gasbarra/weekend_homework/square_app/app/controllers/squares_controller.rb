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
    @square = Square.create(side_length:length, border_radius:radius, color:color)
    redirect_to '/squares/#{@square.id}'
  end

  def show
    @square = Square.find(params[:id])
  end

  def edit
    @square = Square.find(params[:id])
  end

  def update
    edited_square = Square.find(params[:id])
    edited_square.update(params.require(:square).permit(:side_length))
    # = params(:side_length)
    # # border_radius = params(:border_radius)
    # # color = params(:color)
    redirect_to "/squares/#{edited_square.id}"
  end

  def destroy
    Square.delete(params[:id])
    redirect_to '/squares'
  end

end
