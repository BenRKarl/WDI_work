class Email < ActiveRecord::Base
  validates_uniqueness_of :email
  has_many :appearances
  has_many :sites, through: :appearances


  def self.find_email(url)

    #all_html = HTTParty.get('http://www.andrewmadden.com/')
    all_html = HTTParty.get('http://www.nytimes.com/interactive/magazine/masthead.html/')
    #all_html = HTTParty.get(url)
    this_site = Site.find_or_create_by(url: url)
    emails = all_html.scan(/\w+@\w+.\w+/)
    emails.each do |email|
      curr_email = Email.find_or_create_by(email: email)
      this_site.emails << curr_email

    end
    return emails
  end


end
