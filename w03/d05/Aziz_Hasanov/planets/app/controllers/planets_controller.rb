class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end
  def new
  end
  def create
    @new_planet = Planet.create(params.require(:id).permit(:name, :image_url, :diameter, :mass, :life))
    redirect_to "/planets"
  end
  def show
    @show_planet = Planet.find(params[:id])
  end
  def edit
    @edit_planet = Planet.find(params[:id])
  end
  def update
    @update_planet = Planet.find(params[:id])
    @update_planet.update(params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life))
    redirect_to "/planets"
  end
  def destroy
    Planet.delete(params[:id])
    redirect_to "/planets"
  end
end