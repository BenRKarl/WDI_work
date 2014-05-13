class PlanetsController < ApplicationController

# get '/planets' => 'planets#index'
  def index
    @planets = Planet.all
  end

# get '/planets/new' => 'planets#new'
  def new
  end

# post '/planets' => 'planets#create'
  def create
    Planet.create(params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life))
    redirect_to '/planets'
  end

# get '/planets/:id' => 'planets#show'
  def show
    @planet = Planet.find(params[:id])
  end

# get '/planets/:id/edit' => 'planets#edit'
  def edit
    @planet = Planet.find(params[:id])
  end

# put '/planets/:id' => 'planets#update'
  def update
    planet = Planet.find(params[:id])
    planet.update(params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life))
    redirect_to "/planets/#{params[:id]}"
  end

# delete '/planets/:id' => 'planets#destroy'
  def destroy
    Planet.delete(params[:id])
    redirect_to "/planets"
  end


end

