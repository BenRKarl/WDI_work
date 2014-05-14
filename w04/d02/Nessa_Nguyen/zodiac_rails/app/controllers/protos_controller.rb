class ProtosController < ActionController::Base
  def index
    @protos = Proto.all
  end  
end
