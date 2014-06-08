class KittensController < ApplicationController

  def index
  end

  def random
  end

  def new
  end

  def create
    
  end

  private

  def kitten_params
    params.require(:kitten).permit(:url)
  end


end


