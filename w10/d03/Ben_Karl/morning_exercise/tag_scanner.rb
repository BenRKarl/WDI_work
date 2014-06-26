require 'httparty'

def html_tags(string)
  regex = /(?<=<)[a-z]+/
  string.scan(regex).uniq
end

page = HTTParty.get("http://www.facebook.com")

elements = html_tags(page)

elements.count
