class SquaresController < ApplicationController
  def index
    @squares = Square.all 
  end

  def new
  end

  def create
    new_square = Square.create(params.require(:square).permit(:side_length, :border_radius, :color))
    redirect_to "/squares/#{new_square.id}"
  end

  def edit
    @square = Square.find(params[:id])
  end

  def update
    edited_square = Square.find(params[:id])
    edited_square.update(params.require(:square).permit(:side_length, :border_radius, :color))
    redirect_to "/squares/#{edited_square.id}"
  end

  def show
    @square = Square.find(params[:id])
  end

  def destroy
    Square.delete(params[:id])
    redirect_to "/squares"
  end
end
