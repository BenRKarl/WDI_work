class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end

  def random
    @width = rand(200..800)
    @height = rand(200..800)
  end

  def create
    Kitten.create({width: params[:width], height: params[:height]})
    redirect_to '/'
  end
end
