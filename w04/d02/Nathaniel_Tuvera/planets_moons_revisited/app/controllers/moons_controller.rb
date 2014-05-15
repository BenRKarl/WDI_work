class MoonsController < ApplicationController

  def create
    @moon = Moon.create(moon_params)
    @planet = Planet.find(params[:planet_id])
    redirect_to planet_path(@planet)
  end

  def new
    @moon = Moon.new
    @planet = Planet.find(params[:planet_id])
  end

  def edit
    @moon = Moon.find(params[:id])
    @planet = Planet.find(params[:planet_id])
  end

  def update
    @moon = Moon.update(moon_params)
    @planet = Planet.find(params[:planet_id])
    redirect_to planet_path(@planet)
  end

  def destroy
    @moon = Moon.delete(moon_params)
    redirect_to planets_path
  end

  private
  def moon_params
    params.require(:moon).permit(:name)
  end
end
