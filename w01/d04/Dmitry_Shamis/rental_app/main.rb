require_relative 'apartment'
require_relative 'building'
require_relative 'person'

puts "Are you here about the vacancy? Yes or No."
response = gets.chomp.downcase[0]

if response == "n"
  puts "Well... I'll tell you about it anyway."
end

puts "#{@unit} costs $#{@rent} a month, has #{@sqft} sqft, has #{@bedrooms} bedrooms and #{@bathrooms} bathrooms."

puts "Let's see if it's occupied..."
  if occupied? == false
    puts "It's empty. Let's put in an application!"
  else
    puts "Someone lives there. That's too bad."
  end

puts "Do you know about the building? Yes or No."
response = gets.chomp.downcase[0]

if response == "n"
  puts "Well... I'll tell you about it anyway."
end

puts "This apartment is located at #{@address} and was built in a #{@style} style. There are plenty of apartments to choose from on its' #{@floors} floors."

