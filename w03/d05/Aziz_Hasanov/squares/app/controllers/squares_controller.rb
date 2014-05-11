class SquaresController < ApplicationController
  def index
    @squares = Square.all
  end
  def new

  end
  def create
    @new_square = Square.create(params.require(:id).permit(:side_length, :border_radius, :color))
    redirect_to "/squares"
  end
  def show
    @show_square = Square.find(params[:id])
  end
  def edit
    @edit_square = Square.find(params[:id])
  end
  def update
    @update_square = Square.find(params[:id])
    @update_square.update(params.require(:square).permit(:side_length, :border_radius, :color))
    redirect_to "/squares"

    # if @update_square.update(params.require(:id).permit(:side_length, :border_radius, :color))
    #   redirect_to @update_square
    # else
    #   render 'edit'
    # end
  end
  def destroy
    Square.delete(params[:id])
    redirect_to '/squares'
  end
end
