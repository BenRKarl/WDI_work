class KittensController < ApplicationController

  def index
    @width = rand(100..600)
    @height = rand(100..600)
    Kitten.create({ height: @height, width: @width })
    @kittens = Kitten.find(1)
  end
end
