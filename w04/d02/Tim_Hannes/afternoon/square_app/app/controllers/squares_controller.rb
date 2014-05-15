class SquaresController < ApplicationController

  def index
    @squares = Square.all
  end

  def new
    @square = Square.new
  end

  def show
    @square = Square.find(params[:id])
  end

  def create
    @square = Square.new(square_params)
    @square.save
    redirect_to square_path(square)
  end

  def destoy
    @square = Square.find(params[:id])
    @square.destroy

    redirect_to squares_path(square)
  end

  def update
    @square = Square.find(params[:id])

    if @square.update(square_params)
      redirect_to square_path(square)
    else
      render 'edit'
    end
  end

  private
  def square_params
    params.require(:square).permit(:side_length, :border_radius, :color)
  end
end
