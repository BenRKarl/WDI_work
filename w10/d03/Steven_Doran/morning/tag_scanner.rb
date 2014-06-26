def tag_scanner(string)

   require 'httparty'

   url = HTTParty.get(string)
   url.scan(/(?<=<)\w+/).uniq

end