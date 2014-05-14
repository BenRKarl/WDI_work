class ProtosController < ApplicationController

def index
  @protos = Protos.all
end

end
