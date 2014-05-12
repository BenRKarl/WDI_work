class SquaresController < ApplicationController


  def index
    @squares = Square.all
  end

  def new
  

  end

  def create
    square_params = params.require(:square).permit(:side_length, :border_radius, :color)
    new_square = Square.create(square_params)
    # length = params.require(:square).permit(:side_length)
    # length[:length] = length[:side_length].to_i
    # radius = params.require(:square).permit(:border_radius)
    # new_square = Square.create(side_length: length, border_radius: radius)

    redirect_to "/squares/#{ new_square.id }"
  end

  def edit
    @square = Square.find(params[:id])

  end

  def update
    # length = params.require(:square).permit(:length)
    # radius = params.require(:square).permit(:radius)
    square_params = params.require(:square).permit(:side_length, :border_radius, :color)
    id = (params[:id])
    square = Square.find(id)
    # Square.update({ side_length: length, border_radius: radius })
    square.update(square_params)

    redirect_to "/squares/#{id}"

  end

  def show
    @square = Square.find(params[:id])
  end

  def destroy
    Square.delete(params[:id])

    redirect_to "/"
  end
end