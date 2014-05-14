class MoonsController < ApplicationController
  def new
    @show_planet = Planet.find(params[:planet_id])
  end
  def create
    show_planet = Planet.find(params[:planet_id])
    @new_moon = Moon.create(moon_params)
    # show_planet.moons << new_moon
    redirect_to "/planets/#{show_planet.id}"
  end
  def edit
    @edit_moon = Moon.find(params[:id])
  end
  def update
    update_moon = Moon.find(params[:id])
    update_moon.update(moon_params)
    redirect_to "/planets/#{moon.planet_id}"
  end
  def destroy
    Moon.delete(params[:id])
  end

  private
  def moon_params
    params.require(:id).permit(:name)
  end
end


# POST  /planets/:planet_id/moons moons#create  Creates a new moon, associated with a planet.
# GET /planets/:planet_id/moons/:id/edit  moons#edit  Renders a form to edit an existing moon resrouce
# PATCH/PUT /planets/:planet_id/moons/:id moons#update  Update a specific moon that belongs to a specific planet
# DELETE  /planets/:planet_id/moons/:id moons#destroy Delete a specific moon that belongs to a specific planet