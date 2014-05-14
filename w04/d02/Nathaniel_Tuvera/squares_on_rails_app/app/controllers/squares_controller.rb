class SquaresController < ApplicationController

  def index
    @squares = Square.all
  end

  def new
    @square = Square.new
  end

  def create
    # new_square = Square.create({:side_length => params[:side], :border_radius => params[:border], :color => params[:color]})
    # new_square = Square.create(params.require().permit(:side_length, :border_radius, :color))
    square = Square.create(square_params)
    redirect_to square_path(square)
  end


  def edit
    @square = Square.find(params[:id])
  end

  def update
    square = Square.find(params[:id])
    # edited_square.update({:side_length => params[:side], :border_radius => params[:radius], :color => params[:color]})
    # edited_square.update(params.require(:square).permit(:side_length, :border, :color))
    square.update(square_params)
    redirect_to square_path(square)

  end

 def show
    @square = Square.find(params[:id])
  end

  def destroy
    Square.delete(params[:id])
    redirect_to squares_path
  end



  def square_params
    params.require(:square).permit(:side_length, :border_radius, :color)
  end
end
