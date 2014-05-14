class SquaresController < ApplicationController

  # get '/' => 'squares#index'
  def index
    @squares = Square.all
  end

  # get '/squares' => 'squares#new'
  def new
  end

  # post '/squares' => 'squares#create'
  def create
    Square.create(params[:square])
    square = Square.create(square_params)
    redirect_to "/squares/#{square.id}"
  end

  # get '/squares' => 'squares#show'
  def show
    @square = Square.find(params[:id])
  end

  # get '/squares/:id' => 'squares#edit'
  def edit
    @square = Square.find(params[:id])
  end

  # put '/squares/:id' => 'squares#update'
  def update
    square = Square.find(params[:id])
    square.update(square_params)
  end

  # delete '/squares/:id' => 'squares#destroy'
  def destroy
    square.delete(params[:id])
    redirect_to '/squares'
  end

private
  def square_params
    params.require(:square).permit(:side_length, :border_radius, :color)
  end

end
