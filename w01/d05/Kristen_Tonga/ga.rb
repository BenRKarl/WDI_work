# This exercise is about nested arrays and hashes
# Questions are at the bottom of the code

#gives access to finding.pry, which when you load the file, pry opens
require 'pry'

general_assembly = {
  moto: 'TRANSFORMING THINKERS INTO CREATORS.',
  topics: [
      'Business Foundations',
      'Data Analysis',
      'Digital Marketing',
      'Mobile Development',
      'Product Design',
      'User Experience Design',
      'Web Development'
    ]
}

# GA has many campuses
c1 = {name: 'GA Berlin (Betahaus)', address: '19 PrinzessinnenstraBe, Berlin 10969', email: 'berlin@generalassemb.ly'}
c2 = {name: 'GA Berlin', address: 'Winterfeldtstrasse 21, Berlin 10781', email: 'berlin@generalassemb.ly'}
c3 = {name: 'GA Boston', address: '101 Main Street, 14th floor, Cambridge 02142', email: 'boston@generalassemb.ly'}
c4 = {name: 'GA Hong Kong', address: 'The Hive, 21/F, The Phoenix, Luard Road No. 23, Wan Chai', email: 'hk@generalassemb.ly'}
c5 = {name: 'GA London', address: '9 Back Hill, 4/F, London EC1R 5EN', email: 'london@generalassemb.ly'}
c6 = {name: 'GA London (East)', address: 'Shoreditch Town Hall 380 Old St, London EC1V 9LT', email: 'london@generalassemb.ly'}
c7 = {name: 'GA Los Angeles', address: '1520 2nd Street, Santa Monica 90401', email: 'la@generalassemb.ly'}
c8 = {name: 'GA New York City (East)', address: '902 Broadway, 4th Floor, New York 10010', email: 'hello@generalassemb.ly'}
c9 = {name: 'GA New York City (West)', address: '10 East 21st Street, 4th Floor, New York 10010', email: 'hello@generalassemb.ly'}
c10 = {name: 'GA San Francisco (Hattery)', address: '414 Brannan Street, San Francisco 94107', email: 'sf@generalassemb.ly'}
c11 = {name: 'GA Sydney', address: 'Level 1, 608 Harris St, Sydney 2007', email: 'sydney@generalassemb.ly'}
c12 = {name: 'GA Washington D.C.', address: '1133 15th Street NW, The Penthouse, Washington 20005', email: 'dc@generalassemb.ly'}

# In different Countries
general_assembly[:campuses] = {
  :berlin => [c1, c2],
  :boston => [c3],
  :hong_kong => [c4],
  :london => [c5, c6],
  :los_angeles => [c7],
  :new_york_city => [c8, c9],
  :san_francisco => [c10],
  :sydney => [c11],
  :washington_dc => [c12]
}

general_assembly.keys => {:moto, :topics, :campuses}
# Questions: Write a line of code for each
# Example: How many topics does GA have? == 7
ga[:topics].count => 7

# What number topic is 'Web Development'?
# assoc(obj) for array
general_assembly[:topics].index("Web Development")+1

# How many cities does GA have campuses in? == 9
general_assembly[:campuses].count

# How many campuses does GA have? == 12
number = 0
general_assembly[:campuses].each{|k, v| number = number+v.length }
##also written as:
general_assembly[:campuses].each do |k,v|
  number = number + v.length
end
##and another possibility
general_assembly[:campuses].values.flatten.length
##and another. NOTE w/ inject the initial sum = 0, and updates w each iteration... also written inject(&:+)
total = general_assembly[campuses].map { |x,y| y.length }
puts total.inject { |sum, n| sum + n}

# How many campuses does GA have in Berlin?
general_assembly[:campuses][:berlin].length

# Print out all GA's campuses addresses
print general_assembly[:campuses].values.flatten.each do |campus_hash|
  puts campus_hash[:address]


binding.pry
