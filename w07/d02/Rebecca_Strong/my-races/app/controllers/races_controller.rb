class RacesController < ApplicationController
  def index
    @race = Race.all
  end
