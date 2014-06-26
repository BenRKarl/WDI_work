require 'HTTParty'

def get_tags(string)
  
  tags = (string.scan(/<\w+/))
  output = tags.each{|tag| tag.delete("<")}
  return output.uniq

end