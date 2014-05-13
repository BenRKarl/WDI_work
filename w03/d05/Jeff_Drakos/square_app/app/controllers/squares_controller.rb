class SquaresController < ApplicationController
  def index
    @squares = SquareModelApp.all
  end

  def new
  end

  def create
    new_square = SquareModelApp.create(params.require(:square).permit(:side_length, :border_radius, :color))
    redirect_to "/squares/#{new_square.id}"
  end

  def edit
    @square = SquareModelApp.find(params[:id])
  end

def update
     edited_square = SquareModelApp.find(params[:id])
     edited_square.update(params.require(:square).permit(:side_length, :border_radius, :color))
     redirect_to "/squares/#{edited_square.id}"
  end

  def show
      @square = SquareModelApp.find(params[:id])
  end
  def destroy
    SquareModelApp.delete(params[:id])
    redirect_to '/squares'
  end
end
