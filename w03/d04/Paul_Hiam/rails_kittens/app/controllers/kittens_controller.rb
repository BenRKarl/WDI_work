class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
    @width = rand(100..1000)
    @height = rand(100..1000)
    @first = Kitten.create({height: @height, width: @width})

  end

end