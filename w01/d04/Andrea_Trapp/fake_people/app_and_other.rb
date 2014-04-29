require_relative "Person"

# my intial way
# i = 0
# people = []
# # people = Array.new(1000)
# while i < 1000	
# 	people[i] = Person.new
# 	i += 1
# end

# another way
people = []
1_000.times do 
	person = Person.new
	people.push(person)	
end

# another way
people = []
1000.times { people << Person.new}

# Matt's favorite way
people = 1000.times.map{Person.new}


##################################
# my way
# i = 0
# while i < people.length
# 	puts "Hi, I am #{people[i].name}"
# 	i += 1
# end

people.each { |person| puts "Hi, I am #{person.name}"}


####################################
# my version

require_relative "Person"

# my intial way
# i = 0
# people = []
# # people = Array.new(1000)
# while i < 1000	
# 	people[i] = Person.new
# 	i += 1
# end

# another way
people = []
1000.times do 
	person = Person.new
	people.push(person)	
end

# another way
people = []
1000.times { people << Person.new}


##################################
# my way
# i = 0
# while i < people.length
# 	puts "Hi, I am #{people[i].name}"
# 	i += 1
# end

people.each { |person| puts "Hi, I am #{person.name}"}



