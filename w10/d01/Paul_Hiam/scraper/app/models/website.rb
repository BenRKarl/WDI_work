class Website < ActiveRecord::Base
  has_many :scrapings
  has_many :emails, -> {uniq} ,through: :scrapings, 


def self.scrape
  response = HTTParty.get("http://edinaschools.org/page/125")
emails = response.scan(/@/)
end



end
