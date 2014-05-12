class PlanetsController < ApplicationController

def index
  @planets = Planet.all
end

def new
  #show form
end

def create
  life = false
  life = true if params[:life] == 'life'

  new_planet = Planet.create(name:params[:name], image_url:params[:image_url], diameter:params[:diameter], mass:params[:mass], life:life)
  redirect_to "/planets/#{new_planet.id}"
end

def edit
  @planet = Planet.find(params[:id])   
  #show a formula
end

def update
  edit_planet = Planet.find(params[:id])
  edit_planet.update(name:params[:name], image_url:params[:image_url], diameter:params[:diameter], mass:params[:mass], life:params[:life])

  redirect_to "/planets/#{edit_planet.id}"
end

def show
  @planet = Planet.find(params[:id])  
end

def destroy
  Planet.delete(params[:id])
  redirect_to '/planets'
end

end