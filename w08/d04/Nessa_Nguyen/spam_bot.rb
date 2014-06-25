require 'httparty'

def find_emails(url)
  raw = HTTParty.get(url)
  emails = raw.scan(/\w[-\.+]?+@\w+\.+\w{2,4}/)
  raw.scan(/\w+@+\w+[\.]+\w{2,4}/)
end
