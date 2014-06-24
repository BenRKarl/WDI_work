require "httpparty"
require "pry"

def find_emails(url)
  url = "http://www.andrewmadden.com"
  responce = HTTParty.get(url)
  responce.scan([/\w+]+@\w+\.com?/)
end

binding.pry