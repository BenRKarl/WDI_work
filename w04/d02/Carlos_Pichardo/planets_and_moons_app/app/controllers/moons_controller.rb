class MoonsController < ApplicationController
  before_action :set_moon, only: [:show, :edit, :update, :destroy]

  
  def index
    @moons = Moon.all
  end

  
  def show
  end

 
  def new
    @moon = Moon.new
  end

 
  def edit
  end

  
  def create
    @moon = Moon.new(moon_params)

    
  end

  
  def update
    
  end

 
  def destroy
    @moon.destroy
   
  end

  private

   
    def moon_params
      params.require(:moon).permit(:name)
    end
end
