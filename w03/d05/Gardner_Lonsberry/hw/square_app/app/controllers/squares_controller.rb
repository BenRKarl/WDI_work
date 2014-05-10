class SquaresController < ApplicationController

#       squares GET    /squares(.:format)          squares#index
  def index
    @squares = Square.all
  end

#           GET    /squares/new(.:format)      squares#new
  def new
    # Show me a form!!!
  end

#           POST   /squares(.:format)          squares#create
  def create
    new_square = Square.create( params.require(:user).permit(:username) )
    redirect_to "/squares/#{new_square.id}"
  end

#           GET    /squares/:id/edit(.:format) squares#edit
  def edit
    @square = User.find(params[:id])
    # Show me a form!!
  end

#           PUT    /squares/:id(.:format)      squares#update
  def update
     edited_square = User.find(params[:id])
     edited_square.update( params.require(:user).permit(:username) )
     redirect_to "/squares/#{edited_square.id}"
  end

#           GET    /squares/:id(.:format)      squares#show
  def show
    @square = Square.find(params[:id])
    # Show me the square page
  end

#           DELETE /squares/:id(.:format)      squares#destroy
  def destroy
    Square.delete(params[:id])
    redirect_to '/squares'
  end

end
