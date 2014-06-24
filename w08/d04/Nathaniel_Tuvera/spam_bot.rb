require 'httparty'
require 'pry'

def find_emails(url)
  response = HTTParty.get(url)
  response.scan(/\w*[@]\w+/)
end




  # def validateEmail(email)
  #   if(/\w*[@]\w*\b[.]\w*/.match(email))
  #     puts email
  #   else
  #     'not a valid email'
  #   end
  # end
binding.pry

    # JS in html code
  # function validateTelephone(phone){
  #   var phoneRegex = /^\(?\d{3}\(?[-. ]?\d{3}[\.]\d{4}/;
  #     return phone.search(phoneRegex) > -1;
  # }
