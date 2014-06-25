require "HTTParty"

def html_tags(html)
  string = HTTParty.get(html)
  tags = html.scan(/<(\w+)/).flatten.uniq
  return tags.uniq
end
