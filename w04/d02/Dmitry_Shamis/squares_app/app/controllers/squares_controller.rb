class SquaresController < ApplicationController
  def index
    @squares = Square.all
  end

  def new
    @square = Square.new
  end

  def create
    # side_length = params[:square][:side_length].to_i
    # border_radius = params[:square][:border_radius].to_i
    # color = params[:square][:color]
    # new_square = Square.create({:side_length => side_length, :border_radius => border_radius, :color => color})
    new_square = Square.create(params.require(:square).permit(:side_length, :border_radius, :color))
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
    Square.delete(params[:id])
    redirect_to squares_path
  end
end
