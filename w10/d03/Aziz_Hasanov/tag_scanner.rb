require 'httparty'

def scan_page(html)
  html.scan(/(?<=<)\w+/).uniq
end

def scan_tags(url)
  tags = HTTParty.get(url)
  scan_page(tags)
end

scan_tags("http://www.cnn.com")