class SquaresController < ApplicationController
  def index
    @squares = Square.all
  end

  def new
  end

  def create
    new_square = Square.create(params.require(:square).permit(:color, :side_length, :border_radius))
    redirect_to "/squares/#{new_square.id}"
  end

  def show
    @square = Square.find(params[:id])
    @squares = Square.all
  end

  def destroy
    Square.destroy(params[:id])
    redirect_to '/squares'
  end

  def edit
    @square = Square.find(params[:id])
  end

  def update
    edited_square = Square.find(params[:id])
    edited_square.update (params.require(:square).permit(:color, :side_length, :border_radius))
    redirect_to 'squares/#{edited_square.id}'
  end

  def here
    " background-color: '#{:color}';
      width: '#{:side_length}px';
      height: '#{:side_length}px';
      border_radius: '#{:border_radius}px'  "
    end
end
