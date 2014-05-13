
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
    new_planet = Planet.create(planet_params)
    redirect_to "/planets/#{new_planet.id}"
  end

  # get 'planets/:id' => 'planets#show'
  def show
    @planet = Planet.find(params[:id])
    @message = @planet.life_message
    @diam = @planet.diam
  end

  # get 'planets/:id/edit' => 'planets#edit'
  def edit
    @planet = Planet.find(params[:id])
  end

  # put 'planets/:id' => 'planets#update'
  def update
    curr_planet = Planet.find(params[:id])
    curr_planet.update(planet_params)
    redirect_to "/planets/#{curr_planet.id}"
  end



  # delete 'planets/:id' => 'planets#destroy'

  def destroy
    Planet.delete(params[:id])
    redirect_to "/planets"
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life)
  end




end


