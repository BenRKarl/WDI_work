class SquaresController < ApplicationController


  def index
    @squares = Square.all
  end

  def new

  end

  def create
    length = params.require(:square).permit(:length)
    radius = params.require(:square).permit(:radius)
    new_square = Square.create(side_length: length, border_radius: radius )

    redirect_to './square/#{ new_square.id }'
  end

  def edit

  end

  def update
    length = params.require(:square).permit(:length)
    radius = params.require(:square).permit(:radius)
    id = (params[:id])
    square = Square.find(id)
    Square.update({ side_length: length, border_radius: radius })

    redirect_to '/square/#{id}'

  end

  def show
    @square = Square.find(params[:id])
  end

  def destroy
    Square.delete(params[:id])

    redirect_to '/index'
  end
end