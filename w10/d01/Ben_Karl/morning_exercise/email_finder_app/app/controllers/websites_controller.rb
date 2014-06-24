class WebsitesController < ApplicationController

  def create
    url = params[:url]
    response = HTTParty.get(url)
    emails = response.scan(/\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b/)
    emails.each do |email|
      person = Email.find_or_create_by(email: :email)
      site = Website.find_or_create_by(url: :url)
      email.websites << site
    end
    redirect_to root_path
  end

end
