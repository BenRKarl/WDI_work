class PlanetsController < ApplicationController

def index
  @planets = Planet.all
end

def new
end

def create
  planet = Planet.create(params.require(:planets).permit(:name, :diameter, :mass, :image_url, :life))
  redirect_to "/planets/#{ planet.id }"
end

def show
  @planet = Planet.find(params[:id])
end

def destroy
  planet = Planet.find(params[:id])
  planet.delete
  redirect_to '/planets'
end

def edit
  @planet = Planet.find(params[:id])
end

def update
  planet = Planet.find(params[:id])
  planet.update(params.require(:planets).permit(:name, :diameter, :mass, :image_url, :life))
  redirect_to "/planets/#{ planet.id }"
end

end
