require_relative "person"

# crowd = Array.new(1000)

# crowd.map! { |dude| Person.new }

# Matt's fave
crowd = 1000.times.map{Person.new}

crowd.each { |dude| puts "Hi my name is #{dude.name}."}