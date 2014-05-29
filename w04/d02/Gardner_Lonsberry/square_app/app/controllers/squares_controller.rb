class SquaresController < ApplicationController

#           GET    /squares(.:format)          squares#index
  def index
     @squares = Square.all
  end

#           GET    /squares/new(.:format)      squares#new
  def new
     @squares = Square.all
     @square = Square.create
    # @squares = Square.create
# Show me a form!!!
  end

#           POST   /squares(.:format)          squares#create
# Need to input into form: Width, Height, Color
  def create
    @squares = Square.all
    new_square = Square.create(params.require(:squares).permit(:border_radius, :side_length, :color) ) 
    @new_square = new_square
    @border = params[:border_radius]
    @length = params[:side_length]
    @color = params[:color]
    redirect_to "/squares/#{new_square.id}"

  end

#           GET    /squares/:id/edit(.:format) squares#edit
  def edit
    @square = Square.find(params[:id])
    @squares = Square.all
    # Show me a form!!
  end

#           PUT    /squares/:id(.:format)      squares#update
  def update
     @squares = Square.all
     edited_square = Square.find(params[:id])
     edited_square.update( params.require(:squares).permit(:border_radius, :side_length, :color) )
     redirect_to "/squares/#{edited_square.id}"
  end

#           GET    /squares/:id(.:format)      squares#show
  def show
    @square = Square.find(params[:id])
    @squares = Square.all
    # Show me the square page
  end

#           DELETE /squares/:id(.:format)      squares#destroy
  def destroy
  @article = Square.find(params[:id])
  @article.destroy

    redirect_to '/squares'
  end

end
