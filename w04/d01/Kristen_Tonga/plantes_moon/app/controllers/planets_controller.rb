class PlanetsController < ApplicationController


  def index
    @planets = Planet.all
  end

  def show
    @planet = Planet.find(params[:id])
  end

  def new
  end

  def create
    new_planet = Planet.create(planet_params)
    redirect_to "/planets/#{new_planet.id}"
  end

  def edit
    @planet = Planet.find(params[:id])
  end

  def update
    updated_planet = Planet.find(params[:id])
    updated_planet.update(planet_params)
    redirect_to "/planets/#{updated_planet.id}"
  end

  def destroy
    Planet.delete(params[:id])
    redirect_to '/planets'
  end


  private


  def planet_params
    params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life, :id)
  end


end
