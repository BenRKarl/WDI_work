
require_relative "Apartment"
require_relative "Building"
require_relative "Person"

def make_apartment
  curr_apartment = Apartment.new("xx", 0, 0, 0, 0)
  puts "Unit?"
  curr_apartment.unit = gets.chomp
  puts "Rent?"
  curr_apartment.rent = gets.chomp.to_i
  puts "Square Feet?"
  curr_apartment.sqft = gets.chomp.to_i
  puts "Number of Bedrooms?"
  curr_apartment.bedrooms = gets.chomp.to_i
  puts "Number of Bathrooms?"
  curr_apartment.bathrooms = gets.chomp.to_i
  return curr_apartment
end

def make_building
  # address style floors
  curr_building = Building.new("xx", "xx", 0)
  puts "Address?"
  curr_building.address = gets.chomp
  puts "Style?"
  curr_building.style = gets.chomp
  puts "Number of Floors?"
  curr_building.floors = gets.chomp.to_i
  return curr_building
end


def make_person
  curr_person = Person.new("xx", 0, 0)
  puts "Name?"
  curr_person.name = gets.chomp
  puts "Age?"
  curr_person.age = gets.chomp.to_i
  puts "Income?"
  curr_person.income = gets.chomp.to_i
  return curr_person
end


def recap(building_list, apartment_list, person_list)
  puts `clear`
  puts "\n\n\nBuildings: "
  building_list.each {|x| puts "Building address: #{x.address} has these apartments: #{x.apartments.values}"}
  puts "\n\n\nApartments:  "
  apartment_list.each {|x| puts "#{x.unit} is in building #{x.building} and #{x.tenants} lives there"}
  puts "\n\n\nPeople:  "
  person_list.each {|x| puts "#{x.name} lives in #{x.apartment} in building #{x.building}"}
  puts "\n\n\n"
end


def main
  person_list = []
  apartment_list = []
  building_list = []
  response = "start"
  bcount = 0

  while response!='q'
    puts `clear`
    if response == "start"
      puts "(C)reate a person, apartment, or building? Or (A)ssign a person"
      puts "to an apartment or an apartment to a building? (Q) to quit. (R) for recap"
      c_or_a = gets.chomp.downcase[0]
    end
    if c_or_a == "c"
      puts `clear`
      puts "Create (B)uilding, (A)partment, or (P)erson"
      c_what = gets.chomp.downcase[0]
      case c_what
      when 'b'
        building_list.push(make_building)
        bcount += 1
      when 'a'
        apartment_list.push(make_apartment)
      when 'p'
        person_list.push(make_person)
      else
      end
    elsif c_or_a == "a"
      puts `clear`
      puts "Design issue:  please assign apartments to buildings first and then"
      puts "people to those apartments."
      puts "Assign (P)erson to an apartment or an (A)partment to a building?"
      a_what = gets.chomp.downcase[0]
      if a_what == 'p'
        #person_list.each {|x| puts "#{x.name}"}
        recap(building_list, apartment_list, person_list)
        puts "Index of person where 0 is first index?"
        p_index = gets.chomp.to_i
        recap(building_list, apartment_list, person_list)
        #apartment_list.each {|x| puts "#{x.unit}"}
        puts "index of apartment where 0 is first index?"
        a_index = gets.chomp.to_i
        if p_index+1 > person_list.length || a_index+1 >apartment_list.length
          puts "One of the indices entered is too high."
        else
          apartment_list[a_index].tenants.push(person_list[p_index].name)
          person_list[p_index].apartment = apartment_list[a_index].unit
          person_list[p_index].building = apartment_list[a_index].building
        end
      else
        recap(building_list, apartment_list, person_list)
        #apartment_list.each {|x| puts "#{x.unit}"}
        puts "Index of apartment where 0 is first index?"
        a_index = gets.chomp.to_i
        recap(building_list, apartment_list, person_list)
        #building_list.each {|x| puts "#{x.address}"}
        puts "Index of building where 0 is first index?"
        b_index = gets.chomp.to_i
        if a_index+1>apartment_list.length || b_index+1>building_list.length
          puts "One of the indices enteres is too high."
        else
          building_list[b_index].apartments[bcount] = apartment_list[a_index].unit
          apartment_list[a_index].building = building_list[b_index].address
        end
      end
    elsif c_or_a == "r"
      recap(building_list, apartment_list, person_list)
    end
    #recap(building_list, apartment_list, person_list)
    if c_or_a != 'q'
      puts "(C)reate a person, apartment, or building? Or (A)ssign a person"
      puts "to an apartment or an apartment to a building? (Q) to quit.  (R) for recap."
      response = gets.chomp.downcase[0]
    else
      response = 'q'
    end
    c_or_a = response
  end
  recap(building_list, apartment_list, person_list)
end


main
