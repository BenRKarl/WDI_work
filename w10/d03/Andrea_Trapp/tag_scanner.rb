require 'pry'
require 'httparty'

def html_tags(html)
  # tagsarray = response.scan(/<(\w+)/).flatten.uniq
  html.scan(/(?<=<)\w+/).uniq
end

def tag_scanner(url)  
  response = HTTParty.get(url)
  html_tags(response)
end

binding.pry

# tag_scanner("<div class='three columns offset-by-two'><br/><ul id='contacts-links-documents'>")
tag_scanner("http://www.andrewmadden.com")