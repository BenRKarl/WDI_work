require_relative "person"

person_array = []
1000.times { person_array << Person.new }

person_array.each { |person| puts person }

