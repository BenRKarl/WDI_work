class PlanetsController < ApplicationController
  before_action :set_planet, only: [:show, :edit, :update, :destroy]

  
  def index
    @planets = Planet.all
  end

  
  def show
  end

  
  def new
    @planet = Planet.new
  end

  
  def edit
  end

  
  def create
    @planet = Planet.new(planet_params)

  end

  
  def update
    respond_to do |format|
      if @planet.update(planet_params)
        format.html { redirect_to @planet, notice: 'Planet was successfully updated.' }
        
      else
        format.html { render :edit }
        
      end
    end
  end

  
  def destroy
    @planet.destroy
    respond_to do |format|
      format.html { redirect_to planets_url, notice: 'Planet was successfully destroyed.' }
      
    end
  end

  private
    

    def planet_params
      params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life)
    end
end
