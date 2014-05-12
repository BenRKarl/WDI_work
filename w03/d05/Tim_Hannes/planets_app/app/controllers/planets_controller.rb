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
    @planet = Planet.new(planet_params)

    @planet.save
    redirect_to @planet
  end

  def destroy
    @planet = Planet.find(params[:id])
    @planet.destroy

    redirect_to planets_path
  end




  private
    def planet_params
      params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life)
    end
end
