class PlanetsController < ApplicationController



  def index
    @planets = Planet.all
    @moons = Moon.all
  end

  def create
    planet = Planet.create(planet_params)
    redirect_to planet_path(planet)
  end
#        new_planet GET    /planets/new(.:format)                      planets#new
  def new
    @planet = Planet.new
  end
#       edit_planet GET    /planets/:id/edit(.:format)                 planets#edit
  def edit
    @planet = Planet.find(params[:id])
  end

#            planet GET    /planets/:id(.:format)                      planets#show
  def show
    @planet = Planet.find(params[:id])
    @moons = Moon.all
  end
#                   PATCH  /planets/:id(.:format)                      planets#update
#                   PUT    /planets/:id(.:format)                      planets#update
  def update
    planet = Planet.find(params[:id])
    planet.update(planet_params)
    redirect_to person_path(person)
  end
#                   DELETE /planets/:id(.:format)                      planets#destroy

  def destroy
    Planet.delete(params[:id])
    redirect_to people_path
  end

private

  def planet_params
    params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life)
  end
end

