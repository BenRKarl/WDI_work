
class SquaresController < ApplicationController

  # get 'squares' => 'squares#index'

  def index
    @squares = Square.all
  end

  # get 'squares/new' => 'squares#new'

  def new
  end


  # post 'squares' => 'squares#create'
  def create

    new_hash = params.require(:square).permit(:side_length, :border_radius, :color)
    new_square = Square.create(new_hash)
    redirect_to "/squares/#{new_square.id}"
  end

  # get 'squares/:id' => 'squares#show'
  def show
    @square = Square.find(params[:id])
  end

  # get 'squares/:id/edit' => 'squares#edit'
  def edit
    @square = Square.find(params[:id])
  end

  # put 'squares/:id' => 'squares#update'
  def update
    curr_square = Square.find(params[:id])
    curr_square.update(params.require(:square).permit(:side_length, :border_radius, :color))
    redirect_to "/squares/#{curr_square.id}"
  end



  # delete 'squares/:id' => 'squares#destroy'

  def destroy
    Square.delete(params[:id])
    redirect_to "/squares"
  end




end
