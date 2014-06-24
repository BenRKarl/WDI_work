class Website < ActiveRecord::Base
  has_many :emails_websites
  has_many :emails, through: :emails_websites

  def self.email_bot(site)
    regex = /\w*@\w*.\w{2,3}/
    text = HTTParty.get(site)
    results = text.scan(regex)
    return results
  end
end
