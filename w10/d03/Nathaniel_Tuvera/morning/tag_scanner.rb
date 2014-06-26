def html_tags(string)
  tag_regex = /<[a-zA-z]*|[0-9]/i
  if string.scan(tag_regex)
    return string.scan(tag_regex).each { |ele| ele.gsub!('<','') }
  else
    puts 'no tags here'
  end
end

require 'httparty'

def html_tags_from_site(url)
  response = HTTParty.get(url)
  tag_regex = /<\w+/i
  if response.scan(tag_regex)
    return response.scan(tag_regex).each { |ele| ele.gsub!('<','') }
  else
    puts 'no tags here'
  end
end



# Matt Solutions

def html_tags(html)
  html.scan(/<(\w+)/).flatten.uniq
end

require 'httparty'

def find_tags(url)
  html = HTTParty.get(url)
  html_tags(html)
end
