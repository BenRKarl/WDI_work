class MoonsController < ApplicationController


     def create
      moon = Moon.create(planet_params)
      redirect_to
      "/planets/#{planet.id}"
     end

      def new

      end


     def edit
      @moons = Moon.find(params[:id])
      end

    def update
      moon = Moon.find(params[:id])
      moon.update(moon_params)
      redirect_to
      "/planets/#{planet.id}"
     end

      Moon.delete(params[:id])
      redirect_to
      "/planets/#{planet.id}"
     end

