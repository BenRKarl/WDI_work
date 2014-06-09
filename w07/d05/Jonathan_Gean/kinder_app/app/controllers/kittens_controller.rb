class KittensController < ApplicationController
  def index
    kittennum1 = rand(10..500)
    kittennum2 = rand(10..500)
    @kitten_rand = "http://placekitten.com/#{kittennum1}/#{kittennum2}"
  end
end
