

require 'pry'
require 'httparty'

def html_tags(html_string)
  html_string.scan(/<(\w+)/).flatten.uniq
  # result = []
  # result.push('div') if html_string[/<div.*>/].class == String
  # result.push('nav') if html_string[/<nav.*>/].class == String
  # result.push('h1') if html_string[/<h1.*>/].class == String
  # result.push('h2') if html_string[/<h2.*>/].class == String
  # result.push('h3') if html_string[/<h3.*>/].class == String
  # result.push('h4') if html_string[/<h4.*>/].class == String
  # result.push('h5') if html_string[/<h5.*>/].class == String
  # result.push('h6') if html_string[/<h6.*>/].class == String
  # result.push('p') if html_string[/<p.*>/].class == String
  # result.push('br') if html_string[/<br.*>/].class == String
  # result.push('ul') if html_string[/<ul.*>/].class == String
  # result.push('ol') if html_string[/<ol.*>/].class == String
  # result
end

def unique_tags(url)
  html_tags(HTTParty.get(url))
end

binding.pry
unique_tags('http://www.espn.com')
unique_tags('http://www.andrewmadden.com')
