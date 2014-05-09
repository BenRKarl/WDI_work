class KittensController < ActionController::Base
  def index
    @kittens = Kitten.all
  end
end
