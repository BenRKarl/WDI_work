require 'httparty'

def scanner(url)
  text = HTTParty.get(url)
  tags = text.scan(/<\w+[^\/]/)
  tags.uniq!
  tags.each do |tag|
    tag.gsub!('<','').gsub!('>','')
  end
  return tags
end

puts scanner("http://nytimes.com")

/(?<=<)\w+/
