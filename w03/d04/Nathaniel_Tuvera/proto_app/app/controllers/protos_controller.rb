class ProtosController < ApplicationController
  def index
    @protos = Proto.all
    # binding.pry
  end
  def show
      @protos = Proto.find(params[:id])
      # binding.pry
  end
end
