class UserController < ActionController::Base

  def index
    @users = User.all
  end

  def create
    url = params[:url]
    doc = HTTParty.get(url)
    emails = doc.scan()
    emails.each do |email|
      user = User.find_or_create_by(email: email)
      url = Url.find_or_create_by(url: url)
      user.urls << url
    end
    redirect_to people_path
    # redirect_to "/people"
  end
end
