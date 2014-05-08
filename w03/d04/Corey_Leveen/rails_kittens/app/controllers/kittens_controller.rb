class KittensController < ApplicationController

  def index
    @kittens = Kitten.all
    width = rand(100..600)
    height = rand(100..600)

  end
end
