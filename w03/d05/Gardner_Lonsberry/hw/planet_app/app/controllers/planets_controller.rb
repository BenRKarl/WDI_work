class PlanetsController < ApplicationController

# HTTP Verb       PATH         CONTROLLER#ACTION                 BEHAVIOR
#   GET         /planets         planets#index        display a list of all planets
  def index
    @planets = Planet.all
  end

  def new
  end

  def show
  end

  def edit
  end

  def delete
  end


end

