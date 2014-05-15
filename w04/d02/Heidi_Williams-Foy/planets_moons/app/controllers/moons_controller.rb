class MoonsController < ApplicationController

#moons GET    /planets(.:format)   planets#index
def index
  @moons = Moon.all
end

def create
	@moon = Moon.create(moon_params)
	redirect_to "/moon/#{planet.id}"
end

#new_moon GET    /moons/new(.:format)  moons#new
def new
  @moon = Moon.new
end

def edit
	@moon = Moon.find(params[:id])
end

#PUT    /moons/:id(.:format)  moons#update
def update
  @moon = Moon.find(moon_params[:id])
  moon.update(moon_params)
  redirect_to "/moons/#{planet.id}"
end

def destroy
	moon.delete(params[:id])
	moon.update(planet.params)
	redirect_to "/planets"
end
