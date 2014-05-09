class KittensController < ApplicationController

  def index
  #   @kittens = Kitten.all
    Kittens.url
  end

  def url
    self.width = rand(500)
    self.height = rand(500)
    "http://placekitten.com/#{ self.width }/#{ self.height }"
  end

end
