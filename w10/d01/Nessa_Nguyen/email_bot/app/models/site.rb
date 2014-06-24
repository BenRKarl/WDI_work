class Site < ActiveRecord::Base
  has_many :appearances
  has_many :people, through: :appearances
  validates :url, uniqueness: true

  def self.find_email(url)
    text   = HTTParty.get(url)
    emails = text.scan(/[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}/)
    return emails.uniq!
  end
end
