
class KittensController < ApplicationController

  def index
    kittens = Kitten.all
    @url = []
    kittens.each do |kitten|
      @url << "http://placekitten.com/#{kitten.width}/#{kitten.height}"
    end
  end
end




