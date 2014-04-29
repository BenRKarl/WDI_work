require 'pry'
require_relative 'apartment'
require_relative 'building'
require_relative 'person'

 
quit = " "
while quit != "q"
 

  
  def buildings
  
  	puts "buildings: input [m]ake building or [e]dit building"
  	action = gets.chomp
  	  if action == "m"
  	  	puts "name?"
  	  	name = gets.chomp.to_i
  	  	puts "adress?"
  	  	address = gets.chomp.to_s
  	  	puts "style?"
  	  	style = gets.chomp.to_s
  	  	puts "floors?"
  	  	floors = gets.chomp.to_i
  	  	
  	  	name = Building.new(address, style, floors)
  	  	
  	  	puts name
  	  elsif action == "e"
  	  
  	  else
  	  	return menu
  	  end
  	  return menu
  end

  def apartments
  	puts "apartments: input [m]ake apartment or [e]dit apartment"
  	action = gets.chomp
  	if action == "m"

  	  elsif action == "e"
  	  
  	  else
  	  	return menu
  	  end

  	return menu
  end

  def tenants
  	puts "tnnts"
  	puts "tenants: input [m]ake tenants or [e]dit tenants"
  	action = gets.chomp
  	if action == "m"

  	  elsif action == "e"
  	  
  	  else
  	  	return menu
  	  end
  	return menu
  end

  def menu
  	
  	puts 'what would u like to manage?:'
  	puts "(input one: 'buildings'; 'apartments' ; 'tenants' or 'q'(to exit) "
  	session = gets.chomp
  	if session == "q"
  		quit = "q"
  	else 
  		case session
  		  when "buildings"
  		  	return buildings
  
  		  when "apartments"
  		  	return apartments
  
  		  when "tenants"
  		  	return apartments
  
  		  else 
  			puts "pls re-input"

  		end
  	end
  end

  menu

  quit = "q"
end

binding.pry


#In a main.rb file, demonstrate the functionality of your #classes.
#* Write a loop: until the user wants to quit, iterate and be able to create a building, an apartment or a tenant. It is completely OK if your code dies because you try to modify an object that doesn't exist, but if you put guards (conditionals) to avoid that, bonus points! (well, if there were points)