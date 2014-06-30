require 'HTTParty'
require 'pry'

def tag_scanner(string)
  arr = []
  arr = string.scan(/<(\w+)/).flatten.uniq
  return arr
end

def scan_url(url)
  string = HTTParty.get(url)
  tag_scanner(string)
end

tag_scanner("<div class='three columns offset-by-two'><br/><ul id='contacts-links-documents'>")
puts scan_url("http://www.nyt.com")

