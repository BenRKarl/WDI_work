class EmailsController < ApplicationController

  def index
    @emails = Email.all
  end

  def create
    url = params[:url]
    doc = HTTParty.get(url)
    # Scan takes a regex and returns an array of matches
    emails = doc.scan(/\S+@\S+/)
    emails.each do |email|
      newemail = Email.find_or_create_by(address: email)
      site = Site.find_or_create_by(url: url)
      newemail.sites << site
    end
    redirect_to emails_path
  end
end
