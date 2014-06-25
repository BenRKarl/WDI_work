require 'httparty'
require 'pry'

def find_emails(url)

  responce = HTTParty.get(url)

  responce.scan(/\w+@\w+/)


# (/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/)


end

binding.pry
