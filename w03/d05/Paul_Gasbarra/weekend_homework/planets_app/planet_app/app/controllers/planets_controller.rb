class PlanetsController < ApplicationController

  def index
    @planets = Planet.all
  end

  def new
    #show from
  end

  def create
    name = params[:name]
    image_url = params[:image_url]
    diameter = params[:diameter]
    mass = params[:mass]
    life = params[:life]
    @planet = Planet.create(name:name, image_url:image_url, diameter:diameter, mass:mass, life:life)
    redirect_to "/planets/#{@planet.id}"
  end

  def show
    @planet = Planet.find(params[:id])
  end

  def edit
    @planet = Planet.find(params[:id])
  end

  def update
    edited_planet = Planet.find(params[:id])
    edited_planet.update(params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life))
    redirect_to "/planets/#{edited_planet.id}"
  end

  def destroy
    Planet.delete(params[:id])
    redirect_to "/planets"
  end

end
