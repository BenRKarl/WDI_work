class CommentsController < ActionController::Base
  def index
    @selfies = Selfie.all
    @comments = Comment.all
  end
end
