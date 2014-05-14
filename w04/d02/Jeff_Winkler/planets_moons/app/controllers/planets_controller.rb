
class PlanetsController < ApplicationController

  # get 'planets' => 'planets#index'

  def index
    @planets = Planet.all
  end

  # get 'planets/new' => 'planets#new'

  def new
    @planet = Planet.new
  end


  # post 'planets' => 'planets#create'
  def create
    new_planet = Planet.create(planet_params)
    redirect_to planet_path(new_planet)
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
    redirect_to planet_path(curr_planet)
  end



  # delete 'planets/:id' => 'planets#destroy'

  def destroy
    Planet.delete(params[:id])
    redirect_to planets_path
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life)
  end




end


