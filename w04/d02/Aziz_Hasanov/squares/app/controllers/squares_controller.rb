class SquaresController < ApplicationController
  def index
    @squares = Square.all
  end
  def new
    @square = Square.new
  end
  def create
    @square = Square.create(square_params)
    redirect_to "/squares"
  end
  def show
    @square = Square.find(params[:id])
  end
  def edit
    @square = Square.find(params[:id])
  end
  def update
    @square = Square.find(params[:id])
    @square.update(square_params)
    redirect_to "/squares"
  end
  def destroy
    Square.delete(params[:id])
    redirect_to '/squares'
  end

  private

  def square_params
    params.require(:square).permit(:side_length, :border_radius, :color)
  end
end
