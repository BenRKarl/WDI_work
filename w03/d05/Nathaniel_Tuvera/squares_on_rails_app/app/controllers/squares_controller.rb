class SquaresController < ApplicationController

  def index
    @squares = Square.all
  end

  def new
  end

  def create
    new_square = Square.create({:side_length => params[:side], :border_radius => params[:border], :color => params[:color]})
    # new_square = Square.create(params.require().permit(:side_length, :border_radius, :color))
    # new_sqaure = Square.create(square_params)
    redirect_to "/squares/#{new_square.id}"
  end


  def edit
    @square = Square.find(params[:id])
  end

  def update
    edited_square = Square.find(params[:id])
    edited_square.update({:side_length => params[:side], :border_radius => params[:radius], :color => params[:color]})
    # edited_square.update(params.require(:square).permit(:side_length, :border, :color))
    # edited_square.update(square_params)
    redirect_to "/squares/#{edited_square.id}"

  end

 def show
    @square = Square.find(params[:id])
  end

  def destroy
    Square.delete(params[:id])
    redirect_to '/squares'
  end

  # private

  # def square_params
  #   params.require(:square).permit(:side_length, :border_radius, :color)
  # end
end
