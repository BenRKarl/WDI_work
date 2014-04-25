require_relative = "Person"

arr = 1000.times.map{Person.new}

#one way to do it

# crowd = Array.new(1000, Person.new)

# another way to do it

# array =[]
# 1000.time do
#   person = Person.new
#   array.push(person)
# end

# another way to do it

# person_array = []
# 1_000.times { person_array << Person.new }

# person_array.each { |person| puts person}
