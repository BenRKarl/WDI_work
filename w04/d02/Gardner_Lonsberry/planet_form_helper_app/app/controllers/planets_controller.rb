class PlanetsController < ApplicationController
 
  def index
    @planets = Planet.all
  end

  def create 
    @planet = Planet.create(planet_params)
    redirect_to planet_path(@planet)
  end

  def new
    @planet = Planet.new
  end

  def edit
    @planet = Planet.find(params[:id])
  end

  def show
    @planet = Planet.find(params[:id])
  end
    
  def update
    planet = Planet.find(params[:id])
    redirect_to planet_path(planet)
    planet.update(planet_params)
  end
     
  def destroy
    Planet.delete(params[:id])
    redirect_to planets_path
  end
    

  private
    def planet_params
      params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life)
    end
  end

