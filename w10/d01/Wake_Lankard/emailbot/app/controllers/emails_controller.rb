class EmailsController < ApplicationController
  def index
    @emails = Emails.all 
  end


  def create
    url = params[url]
    doc = HTTParty.get(url)
    emails = doc.scan()
    emails.each do |email|
      email = Email.find_or_create_by(email: email)
      url = Url.find_or_create_by(url: url)
      email.urls << url
    end
    redirect_to email_path


  end
end