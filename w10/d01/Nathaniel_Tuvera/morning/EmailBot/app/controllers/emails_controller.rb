class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end

  def create
    url = params[:url]
    doc = HTTParty.get(url)
    emails = doc.scan(/\w+@\w+/)
    emails.each do |email|
      email = Email.find_or_create_by(email: email)
      site  = Site.find_or_create_by(url: url)
      email.sites << site
    end
    redirect_to people_path #redirect_to "/people"
  end
end
