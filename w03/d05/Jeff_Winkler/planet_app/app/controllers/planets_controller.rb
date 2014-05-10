
class PlanetsController < ApplicationController

  # get 'planets' => 'planets#index'

  def index
    @planets = Planet.all
  end

  # get 'planets/new' => 'planets#new'

  def new
  end


  # post 'planets' => 'planets#create'
  def create

    new_hash = params.require(:planet).permit(:name, :image_url, :diamter, :mass, :life)
    new_planet = Planet.create(new_hash)
    redirect_to "/planets/#{new_planet.id}"
  end

  # get 'planets/:id' => 'planets#show'
  def show
    @planet = Planet.find(params[:id])
    if @planet.life == true
      @message = "Life exists on #{@planet.name}"
    else
      @message = "No life exists on #{@planet.name}"
    end
    @diam = "#{@planet.name} has a diameter of #{@planet.diameter} and a mass of #{@planet.mass}"
  end

  # get 'planets/:id/edit' => 'planets#edit'
  def edit
    @planet = Planet.find(params[:id])
  end

  # put 'planets/:id' => 'planets#update'
  def update
    curr_planet = Planet.find(params[:id])
    curr_planet.update(params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life))
    redirect_to "/planets/#{curr_planet.id}"
  end



  # delete 'planets/:id' => 'planets#destroy'

  def destroy
    Planet.delete(params[:id])
    redirect_to "/planets"
  end

end
