class SquaresController < ApplicationController

  def index
    @squares = Square.all
  end

  def new   
    @square = Square.new
    # Show me a form!!
  end

  def create
    square = Square.create( params.require(:square).permit(:side_length, :border_radius, :color) )

    redirect_to square_path(square)    #   redirect_to "/squares/#{square.id}"
  end

  def edit
    @square = Square.find(params[:id])
    # Show me a form!!
  end

  def update
     square = Square.find(params[:id])
     square.update( params.require(:square).permit(:side_length, :border_radius, :color) )
     redirect_to square_path(square)   
  end

  def show
    @square = Square.find(params[:id])
    # Show me the square page
  end

  def destroy
    Square.delete(params[:id])
    redirect_to squares_path    #   '/squares'
  end

end
