class PlanetsController < ApplicationController

  def index
    @planets = Planet.all
  end

  def new   
    # Show me a form!!
  end

  def create   
    new_planet = Planet.create( planet_params ) # calls private method below
    redirect_to "/planets/#{new_planet.id}"
  end

  def edit
    @planet = Planet.find(params[:id])
    # Show me a form!!
  end

  def update
     edited_planet = Planet.find(params[:id])   
     edited_planet.update( planet_params ) # calls private method below
     redirect_to "/planets/#{edited_planet.id}"
  end

  def show
    @planet = Planet.find(params[:id])
    # Show me the planet page
  end

  def destroy
    Planet.delete(params[:id])
    redirect_to '/planets'
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life)
  end

end
