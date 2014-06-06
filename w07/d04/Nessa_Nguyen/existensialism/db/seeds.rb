require 'nokogiri'
require 'open-uri'
##doc = Nokogiri::HTML(open("http://www.existential-therapy.com/existential_quotes.html"))
##quote_data = doc.css('p')
##quote_data = quote_data[1..134]
##quote_data.each do |quote|
##  data = quote.text
##  quote, attribution = data.split(/\n/)
##  Quote.create(text: quote, attribution: attribution)
##end


page = 2
while page <= 8
  docBrainy = Nokogiri::HTML(open("http://www.brainyquote.com/quotes/topics/topic_wisdom#{page}.html"))
  i = 0
  while i < 25
    quote  = docBrainy.css('.bqQuoteLink a').children[i].text
    author = docBrainy.css('.bq-aut a').children[i].text
    Quote.create(text: quote, attribution: author)
    i += 1
  end
  page += 1
end


