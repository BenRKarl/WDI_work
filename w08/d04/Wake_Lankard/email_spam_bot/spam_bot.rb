require 'HTTParty'

def get_email(site)
  regex = /\w+@\w+\.\w{2,3}/
  return HTTParty.get(site).scan(regex)

end
site =""
while site != "quit" do
  puts "website: "
  site = gets.chomp
  puts get_email(site)
end