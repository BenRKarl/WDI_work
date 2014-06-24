require 'httparty'

response = HTTParty.get('http://www.gnu.org/software/mailman/mailman-admin/node4.html')

emails = []

10.times do
emails << response.body.match(/\S+@\S+/)
end

puts emails

