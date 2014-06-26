require 'pry'
require 'HTTParty'

html = HTTParty.get('www.ramapoathletics.com')


def html_tags(html)
  html.scan(/<(\w+)/).flatten.uniq
end

def find_tags(url)
  html=HTTParty.get(url)
  html_tags(html)
end

