class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end
  def new
  end
  def create
    new_planet = Planet.create(user_params)
    redirect_to '/planets'
  end
  def show
    @show_planet = Planet.find(params[:id])
  end
  def edit
    @edit_planet = Planet.find(params[:id])
  end
  def update
    update_planet = Planet.find(params[:id])
    update_planet.update(update_params)
    redirect_to "/planets/#{update_planet.id}"
  end
  def destroy
    Planet.delete(params[:id])
    redirect_to '/planets'
  end

  private

  def user_params
    params.require(:id).permit(:name, :image_url, :diameter, :mass, :life)
  end
  def update_params
    params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life)
  end
end