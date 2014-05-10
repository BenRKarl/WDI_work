class SquaresController < ApplicationController

  def index
    @squares = Square.all
  end

  def new
  end

  def create
    new_square = Square.create({:side_length => params[:side], :border_radius => params[:border], :color => params[:color]})
    redirect_to "/squares/#{new_square.id}"
  end


  def edit
    @square = Square.find(params[:id])
  end

  def update
    edited_square = Square.find(params[:id])
    edited_square.update({:side_length => params[:side], :border_radius => params[:radius], :color => params[:color]})
    redirect_to "/squares/#{edited_square.id}"
  end

 def show
    @square = Square.find(params[:id])
  end

  def destroy
  end
end
