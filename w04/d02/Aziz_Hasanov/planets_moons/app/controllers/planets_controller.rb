class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end
  def new
    @planet = Planet.new
  end
  def create
    planet = Planet.create(user_params)
    redirect_to '/planets'
  end
  def show
    @planet = Planet.find(params[:id])
  end
  def edit
    @planet = Planet.find(params[:id])
  end
  def update
    planet = Planet.find(params[:id])
    planet.update(user_params)
    redirect_to "/planets/#{planet.id}"
  end
  def destroy
    Planet.delete(params[:id])
    redirect_to '/planets'
  end

  private


  def user_params
    params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life)
  end
end