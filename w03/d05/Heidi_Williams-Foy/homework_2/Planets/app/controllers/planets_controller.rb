class PlanetsController < ActionController::Base

	def index
		@planets = Planets.all
	end

	def create
 		new_planet = Planet.create ( params.require(:planet).permit(:side_length, :border_radius, :color) )
  		redirect_to "/planets/#{new_planet.id}"
	end

	def new
		@planet = Planet.new
	end

	def edit
  		@planet = Planet.find(params[:id])
	end

	def show
  		@planet = Planet.find(params[:id])
	end

	def update
	  	edited_planet = Planet.find(params[:id])
	  	edited_planet.update( params.require(:planet).permit(:side_length, :border_radius, :color) )
	  	redirect_to "/planet/#{edited_planet.id}"
	end

	def destroy
	  	Planet.delete(params[:id])
	  	redirect_to '/planets'
	end

end