class MoonsController < ApplicationController

  def index
    @moon = Moon.all
  end
  
  def new
  end
  def create
    @moon = Moon.create(moon_params)
    redirect_to "/moons/#{@moon.id}"
  end

  def edit
    @moon = Moon.find(params[:id])
  end

  def show
    @moon = Moon.find(params[:id])
  end

  def update
    moon = Moon.find(params[:id])
    moon.update(moon)
    redirect_to "/moons/#{moon.id}"
  end

  def destroy
    Moon.delete(params[:id])
    redirect_to "/moons"
  end

private
  def moon_params
    params.permit(:name)
  end
end