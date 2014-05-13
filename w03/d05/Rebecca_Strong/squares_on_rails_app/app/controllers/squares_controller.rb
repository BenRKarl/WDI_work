class SquaresController < ApplicationController

  def index
    @squares = Square.all
  end

  def new
    @square = Square.new
  end

def create
    square = Square.create(square_params)
    binding.pry
    redirect_to square_path(square)
  end

  def edit
    @square = Square.find(params[:id])
  end

  def update
    edited_square = Square.find(params[:id])
    square.update(square_params)
    redirect_to square_path(square)
  end

  def show
    @square = Square.find(params[:id])
  end

  def destroy
    Square.delete(params[:id])
    redirect_to squares_path(square)
  end


end
