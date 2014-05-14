class SquaresController < ApplicationController


  def index
    @squares = Square.all
  end

  def new
    @square = Square.new
  end

  def create
    square = Square.create(params.require(:square).permit(:side_length, :border_radius, :color))
    redirect_to square_path(square)
  end

  def show
    @square = Square.find(params[:id])
  end

  def edit
    @square = Square.find(params[:id])
  end

  def update
    square = Square.find(params[:id])
    square.update(params.require(:square).permit(:side_length, :border_radius, :color))
    redirect_to square_path(square)
  end

  def destroy
    square = Square.find(params[:id])
    square.delete
    redirect_to square_path(squares)
  end

end
