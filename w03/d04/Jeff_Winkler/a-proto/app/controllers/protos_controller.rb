
class ProtosController < ApplicationController
  def index
    @protos = Proto.all
  end

  def welcome
  end

  def show
    id = params[:id]
    @curr_proto = Proto.find(id)
  end
end




