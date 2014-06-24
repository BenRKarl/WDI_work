require 'HTTParty'

all_html = HTTParty.get('http://www.andrewmadden.com/')
all_html = HTTParty.get('http://www.nytimes.com/interactive/magazine/masthead.html/')


emails = all_html.scan(/\w+@\w+.\w+/)

puts emails







