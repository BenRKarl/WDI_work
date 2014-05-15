class SquaresController < ApplicationController

  # get '/squares' => 'squares#index'
  def index
    # display list of squares
    @squares = Square.all
  end

  # get '/squares/new' => 'squares#new'
  def new
    @square = Square.new
  end

  # post '/squares' => 'squares#create'
  def create
    Square.create(params.require(:square).permit(:side_length, :border_radius, :color))
    redirect_to squares_path

  end

  # get '/squares/:id' => 'squares#show'
  def show
    @square = Square.find(params[:id])
  end

  # get '/squares/:id/edit' => 'squares#edit'
  def edit
    @square = Square.find(params[:id])
  end

  # put '/squares/:id' => 'squares#update'
  def update
    square = Square.find(params[:id])
    square.update(params.require(:square).permit(:side_length, :border_radius, :color))
    redirect_to square_path(square)
  end

  # delete '/squares/:id' => 'squares#destroy'
  def destroy
    Square.delete(params[:id])
    redirect_to squares_path
  end

end
