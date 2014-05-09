class ProtosController < ApplicationController


 def welcome
    
  end

  def index
    @protos = Proto.all
  end

 def show
    @proto = Proto.find(params[:id])
  end

end