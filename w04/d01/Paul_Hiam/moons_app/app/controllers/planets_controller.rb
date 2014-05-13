class PlanetsController < ApplicationController

  def index
    @planets = Planet.all
  end

  

  def new
  end
  def create
    @planet = Planet.create(planet_params)
    redirect_to "/planets/#{@planet.id}"
  end

  def edit
    @planet = Planet.find(params[:id])
  end

  def show
    @planet = Planet.find(params[:id])
  end

  def update
    planet = Planet.find(params[:id])
    planet.update(planet_params)
    redirect_to "/planets/#{planet.id}"
  end

  def destroy
    Planet.delete(params[:id])
    redirect_to "/planets"
  end

private
  def planet_params
    params.permit(:name, :diameter, :mass, :image_url)
  end
end
