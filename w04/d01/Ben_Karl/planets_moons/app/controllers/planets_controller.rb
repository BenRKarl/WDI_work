class PlanetsController < ApplicationController

# index
def index
  @planets = Planet.all
end

# new
def new
end

# create
def create
  planet = Planet.create(planet_params)
  redirect_to "/planets/#{ planet. id}"
end

# show
def show
  @planet = Planet.find(params[:id])
  @moons = @planet.moons.all
end

# edit
def edit
  @planet = Planet.find(params[:id])
end

# update
def update
  planet = Planet.find(params[:id])
  planet.update(planet_params)
  redirect_to "/planets/#{planet.id}"
end

# delete
def destroy
  planet = Planet.find(params[:id])
  planet.delete
  redirect_to "/planets"
end

private

def planet_params
  params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life)
end

end


