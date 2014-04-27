class Client

	attr_accessor :name, :pets, :age

	#A client can have multiple pets (animals), but it doesn't start with any.
    #Pet names MUST be unique (What implications does this have for our choice of data structure?)
	

	def initialize(name,age)
		@name = name
		@age = age
		@pets = {}		
	end
	
	def pet_count
		@pets.length
	end

	def adopt(pet_name, pet)
		@pets[pet_name] = pet
	end

	def give_away_pet(pet_name)
		@pets.delete(pet_name)
	end

	def display_pets
		pet_names.each do |pet_name|
			puts pet_name
		end
		end

	def pet_names
		@pets.keys
	end

	def to_s 
		"#{@name} is a #{@age} year old with #{@pets.length} pets"
	end

end



