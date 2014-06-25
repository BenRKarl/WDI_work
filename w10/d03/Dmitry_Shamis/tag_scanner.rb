require 'httparty'

def html_tags(string)
  tags = string.scan(/<(\w+)/).flatten.uniq
  return tags
end

def httparty_tags(url)
  data = HTTParty.get(url)
  html_tags(data)
end
