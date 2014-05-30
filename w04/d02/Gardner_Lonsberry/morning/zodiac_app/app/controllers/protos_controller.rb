class ProtosController < ApplicationController

  def index
    @proto = Proto.all  
  end

end
