class ProtosController < ApplicationController
  def index
    @protos = Proto.all
  end

  def show
    @proto = Proto.find( params[:name] )
  end
end
