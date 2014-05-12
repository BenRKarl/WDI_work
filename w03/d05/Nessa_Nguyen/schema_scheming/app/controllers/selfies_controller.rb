class SelfiesController < ActionController::Base
  def index
    @selfies = Selfie.all
  end
end
