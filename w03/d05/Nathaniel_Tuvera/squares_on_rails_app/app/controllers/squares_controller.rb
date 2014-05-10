class SquaresController < ApplicationController

  def index
    @squares = Square.all
  end

  def new
  end

  def create
    new_square = Square.create({:side_length => params[:side], :border_radius => params[:border], :color => params[:color]})
    redirect_to "/squares"
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
