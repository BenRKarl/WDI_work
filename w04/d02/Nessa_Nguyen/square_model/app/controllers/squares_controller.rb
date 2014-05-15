class SquaresController < ActionController::Base
  def index
    @squares = Square.all
  end

  def new
    @square = Square.new
  end

  def create
    @square = Square.create(params.require(:square).permit(:side_length, :border_radius, :color))

    #redirect_to "/squares/#{@square.id}"
    redirect_to square_path(@square)
  end

  def edit
    @square = Square.find(params[:id])
  end

  def update
    edited_square = Square.find(params[:id])
    edited_square.update(params.require(:square).permit(:side_length, :border_radius, :color)) 
    @square = edited_square

    #redirect_to "/squares/#{ @square.id }"
    redirect_to square_path(@square)
  end 

  def show 
    @square = Square.find(params[:id])
  end

  def destroy
    Square.delete(params[:id])
    #redirect_to "/squares"
    redirect_to squares_path
  end
end
