class PlanetsController < ApplicationController

  def index
    @planets = Planet.all
  end

  def create
    new_planet = Planet.create(planet_params)
    redirect_to planet_path(new_planet)
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
    edited_planet = Planet.find(params[:id])
    edited_planet.update(planet_params)
    redirect_to planet_path(edited_planet)
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