class SquaresController < ApplicationController

def index
  @squares = Square.all
end

def new
  #show form
end

def create
 
  new_square = Square.create(side_length:params[:side_length], border_radius:params[:border_radius], color:params[:color])
  redirect_to "/squares/#{new_square.id}"
end

def edit
  @square = Square.find(params[:id])   
  #show a formula
end

def update
  edit_square = Square.find(params[:id])
  edit_square.update(side_length:params[:side_length], border_radius:params[:border_radius], color:params[:color])

  redirect_to "/squares/#{edit_square.id}"
end

def show
  @square = Square.find(params[:id])  
end

def destroy
  Square.delete(params[:id])
  redirect_to '/squares'
end

end
