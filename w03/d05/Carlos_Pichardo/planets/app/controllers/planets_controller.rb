class PlanetsController < ApplicationController
  

 
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
   
  end

  
  def destroy
    @planet.destroy
    
  end

  
end
