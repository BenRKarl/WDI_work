require 'nokogiri'

url = "http://localhost:4567"

data = Nokogiri::HTML(open(url))

puts data.at_css('#price').text.strip

puts data.at_css('#time').text.strip

puts data.at_css('#stock').text.strip