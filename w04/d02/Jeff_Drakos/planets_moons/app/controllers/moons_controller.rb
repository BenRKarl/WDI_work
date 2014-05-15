class MoonsController < ApplicationController


     #       planets GET    /planets(.:format)                           planets#index
     def index
      @moons = Moon.all
    end

    def new
      @moon = Moon.new
      @planet = Planet.find(params[:planet_id])
    end

    def create
  @planet = Planet.find(params[:planet_id])
  moon = Moon.create(moon_params)
  @planet.moons << moon
  redirect_to "/planets/#{ @planet.id }"
end

    def edit
      @planet = Planet.find(params[:planet_id])
      @moon = Moon.find(params[:id])
    end

    def show
      @moon = Moon.find(params[:id])
    end

     def update
    moon = Moon.find(params[:id])

    moon.update(moon_params)
    planet = Planet.find(params[:planet_id])
    redirect_to "/planets/#{planet.id}"
  end

  def destroy

    Moon.delete(params[:id])
    planet = Planet.find(params[:planet_id])

    redirect_to "/planets/#{ planet.id }"
  end

private
    def moon_params
      params.require(:moon).permit(:name, :planet_id)
    end
end
