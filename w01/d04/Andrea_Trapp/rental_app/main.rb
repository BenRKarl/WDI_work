require_relative "building.rb"
require_relative "apartment.rb"
require_relative "person.rb"

buildings = []

quit = false

while !quit

	print "Create a (b)uilding, an (a)partment or a (t)enant - or type \"q\" to quit: "
	user_input = gets.chomp.downcase[0]

	if user_input == "q"
		quit = true
	else
		case user_input

		when "b"
			# create a building
			print "Address: "
			address = gets.chomp
			print "Style: "
			style = gets.chomp
			print "Amount of floors: "
			floors = gets.chomp

			new_building = Building.new(address, style, floors) 
			buildings << new_building
			
		when "a"
			# check if there is a least one building
			if buildings.empty? 
				puts "You have to create a building before you can put apartments in it."
			else
				# choose a building
				index = 0
				puts "Please choose a building (type in the number): "
				buildings.each do |building|
					puts "[#{index}]: #{building.address}"
					index += 1				
				end 
				building_index = gets.chomp.to_i			
				building = buildings[building_index]
				
				# create an apartment
				print "Unit: "
				unit = gets.chomp
				print "Rent: "
				rent = gets.chomp
				print "Sqft: "
				sqft = gets.chomp
				print "Number of bedrooms: "
				bedrooms = gets.chomp
				print "Number of bathrooms: "
				bathrooms = gets.chomp

				# add apartment to building
				new_apartment = Apartment.new(unit, rent, sqft, bedrooms, bathrooms)
				building.apartments[unit] = new_apartment

				# puts building.to_s --> puts calls to_s 
				puts building
			end
		when "t"
			# check if there is a least one building
			if buildings.empty? 
				puts "You have to create a building before you can put apartments in it."
			else
				# choose building
				index = 0
				puts "Please choose a building (type in the number): "
				buildings.each do |building|
					puts "[#{index}]: #{building.address}"
					index += 1				
				end 
				building_index = gets.chomp.to_i			
				building = buildings[building_index]

				if building.apartments == {} # if building.apartments.emtpy? ==> undefined method empty? for hash ... ?
				 	puts "That building has not apartments. You have to create an apartment before you can put tenants in it."					
				else

					# choose apartment
					occupied = true
					while occupied
						puts "Please choose an apartment (type in the unit): "
						building.apartments.each do |unit, description|						
							puts "[#{unit}]: #{building.apartments[unit].to_s}"									
						end
						unit = gets.chomp		
						apartment = building.apartments[unit]	

						if !building.apartments[unit].occupied? 	
							occupied = false				
							
							# create a tenant
							print "Name: "
							name = gets.chomp
							print "Age: "
							age = gets.chomp
							print "Income: "
							income = gets.chomp

							# add tenant to apartment
							new_tenant = Person.new(name, age, income)
							building.apartments[unit].tenants << new_tenant

						else						
							# puts apartment.to_s
							puts apartment
							puts "Sorry, this apartment is already occupied. Please choose another one."													
						end
						
					end

					puts "Tenant (#{building.apartments[unit].tenants[0].to_s}) moved in Apartment (#{building.apartments[unit].to_s}) / in Building (#{building.address})."	

				end 
				
			end
			
		end 

	end 

end 

