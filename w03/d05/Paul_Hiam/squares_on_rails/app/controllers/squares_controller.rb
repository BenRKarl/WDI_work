class SquaresController < ApplicationController

def index
  @squares = Square.all
end

def new
  #show form
end

def create
  @side_length = ( params.permit(:side_length))
  @border_radius = ( params.permit(:border_radius))
  @color = ( params.permit(:color))
  new_square = Square.create({side_length: @side_length, border_radius: @border_radius, color: @color})
end

def edit
  @square = Square.find(params[:id])   
  #show a form
end

def update
  edit_square = Square.find(params[:id])
  edit_square.update( )

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
