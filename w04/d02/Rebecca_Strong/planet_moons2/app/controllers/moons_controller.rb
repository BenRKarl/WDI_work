class MoonsController < ApplicationController


     def create
      planet = Planet.find(params[:planet_id])
      moon = Moon.create(moon_params)
      redirect_to "/planets/#{planet.id}"
     end

      def new
        planet = Planet.find(params[:planet_id])
      end


     def edit
      @planet = Planet.find(params[:planet_id])
      @moon = Moon.find(params[:id])
      end

    def update
      planet = Planet.find(params[:planet_id])
      moon = Moon.find(params[:id])
      moon.update(moon_params)
      redirect_to "/planets/#{planet.id}"
     end

    def destroy
      planet = Planet.find(params[:planet_id])
      Moon.delete(params[:id])
      redirect_to "/planets/#{planet.id}"
     end

     private

    def moon_params
      params.require(:moon).permit(:name)
    end
end

