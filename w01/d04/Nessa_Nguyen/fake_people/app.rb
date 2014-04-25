require_relative "person"


# Very short
crowd = 5.times.map{Person.new}

crowd.map! { |person|
  puts "My name is #{person.name}"
  }

5.times { Person.new.to_s } # Saying hi built in 

#  # Generate crowd
#  crowd = []
#  5.times {
#    person = Person.new
#    crowd.push(person)
#    }#  



# # Generate crowd 2
# 5.times { crowd << Person.new }
