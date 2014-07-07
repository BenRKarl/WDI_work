class EmailsController < ApplicationController

def index
  @emails = Email.all
  
end


def create
  email = params[:email]
  doc = HTTParty.get(email)
  emails = doc.scan(//)
  emails.each do |email|
    email = Email.find_or_create_by(address: address)
    website = Website.find_or_create_by(url: url)
    emails.websites << website
  end
  redirect_to email_path
end




private

def email_params
  params.require(:email).permit(:address, :name)
end

end

