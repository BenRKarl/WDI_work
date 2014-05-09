class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end

  def new
    @width = rand(100..500)
    @height = rand(100..500)
  end

  def save
    width = params['width']
    height = params['height']
    Kitten.create({width: width, height: height})
    redirect_to '/kittens'
  end
end
