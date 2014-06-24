class WelcomeController < ApplicationController
  def index
    @emails = Emails.all
  end
  def create
    url = params[:url]
    doc = HTTParty.get(url)
    emails = doc.scan(/\w+@\w+/)
    emails.each do |email|
      email = Emails.find_or_create_by(email: email)
      site = Site.find_or_create_by(url: url)
      email.sites << site
end
