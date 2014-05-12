class CelebritiesController < ActionController::Base
  def index
    @celebs = Celebrity.all
  end
end
