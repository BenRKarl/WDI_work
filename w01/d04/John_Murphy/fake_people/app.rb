require_relative "person"

thousand = []
1000.times {thousand.push(Person.new)}
# or:     1000.times {thousand << Person.new}
#
# or:     1000.times do
#           person = Person.new
#           thousand.push(person)
#         end
#
#
# or:     array = 1000.times.map{Person.new}


thousand.each {|i| puts "Hi, I am #{i.name}."}

# thousand.each do |person|
#   puts person
# end

# crowd = Array.new(1000)
# crowd.map!(|person| Person.new)
#
# crowd.each {|i| puts "Hi, I am #{i.name}."}

