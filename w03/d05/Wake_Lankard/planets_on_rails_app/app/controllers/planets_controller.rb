class PlanetsController < ApplicationController
# ix Verb   URI Pattern                 Controller#Action
#        root GET    /                           planets#index
#     planets GET    /planets(.:format)          planets#index
# planets_new GET    /planets/new(.:format)      planets#new
#             POST   /planets(.:format)          planets#create
#             GET    /planets/:id(.:format)      planets#show
#             GET    /planets/:id/edit(.:format) planets#edit
#             PUT    /planets/:id(.:format)      planets#update
#             DELETE /planets/:id(.:format)      planets#destroy

  def index
    @planets = Planet.all
  end

  def new

  end

  def create
    planet_params = params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life)
    new_planet = Planet.create(planet_params)

    redirect_to "/planets/#{ new_planet.id }"
  end

  def show
    @planet = Planet.find(params[:id])

  end

  def edit
    @planet = Planet.find(params[:id])
    @life_checked = ""
    @nolife_checked = ""
    if @planet.life 
      @life_checked = "checked"
    elsif !@planet.life
      @nolife_checked = "checked"
    end
        
  end

  def update
    planet_params = params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life)
    edit_planet = Planet.find(params[:id])
    edit_planet.update(planet_params)

    redirect_to "/planets/#{ edit_planet.id }"

  end

  def destroy
    Planet.delete(params[:id])

    redirect_to "/planets"
  end



end
