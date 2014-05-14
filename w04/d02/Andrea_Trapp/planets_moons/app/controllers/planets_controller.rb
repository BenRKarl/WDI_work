class PlanetsController < ApplicationController

  def index
    @planets = Planet.all
  end

  def new 
    @planet = Planet.new  
    # Show me a form!!
  end

  def create   
    planet = Planet.create( planet_params ) # calls private method below
    redirect_to planet_path(planet)
  end

  def edit
    @planet = Planet.find(params[:id])
    # Show me a form!!
  end

  def update
     planet = Planet.find(params[:id])   
     planet.update( planet_params ) # calls private method below
     redirect_to planet_path(planet)
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
