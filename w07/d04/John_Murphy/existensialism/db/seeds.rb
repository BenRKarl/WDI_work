# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Quote.delete_all

require 'nokogiri'
require 'open-uri'
doc = Nokogiri::HTML(open("http://www.existential-therapy.com/existential_quotes.html"))
quote_data = doc.css('p')
quote_data = quote_data[1..134]
quote_data.each do |quote|
  data = quote.text
  quote, attribution = data.split(/\n/)
  Quote.create(text: quote, attribution: attribution)
end

doc = Nokogiri::HTML(open("http://www.afi.com/100years/quotes.aspx"))

def fours()
   array = [7]
   while array.length < 100
     array.push(array.last+4)
   end
   array
end

lines = []

ids = fours()

ids.each do |id|
   lines.push(doc.css('span')[id].text)
end

lines.each do|line|
   Quote.create(text: line, attribution: " AFI Movie")
end
