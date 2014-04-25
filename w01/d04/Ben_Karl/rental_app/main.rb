require_relative 'apartment'
require_relative 'building'
require_relative 'person'

ben = Person.new("Ben", 29, 0)
puts ben.to_s

marge = Person.new("Joooosh", 13, 1_000_000)
puts marge.to_s

ben_apt = Apartment.new("B1", 13, 100, 0, 1)
puts ben_apt.to_s

marge_apt = Apartment.new("C1", 45, 1_000, 2, 2)
puts marge_apt.to_s

da_crib = Building.new("45 Street St.", "A building", 2)
puts da_crib.to_s

print "Would you like to make a thing? (y/n): "
user_option = gets.chomp.downcase[0]

until user_option == "n"

print "Sweet! Do you want to create a (b)uilding, (a)partment, or (p)erson?: "
selection = gets.chomp.downcase[0]

case selection
  when selection = "b"

    print "What's the address of your building?: "
    u_address = gets.chomp.to_s
    print "What style does this place have?: "
    u_style = gets.chomp.to_s
    print "Lastly, how many floors does it have?: "
    u_floors = gets.chomp.to_i

    user_building = Building.new(u_address, u_style, u_floors)
    puts user_building.to_s

  when selection = "a"

    print "What's the unit number?: "
    u_unit = gets.chomp.to_s
    print "How much is the rent?: "
    u_rent = gets.chomp.to_i
    print "How many square feet does it have?: "
    u_sqft = gets.chomp.to_i
    print "How many bedrooms does it have?: "
    u_bedrooms = gets.chomp.to_i
    print "How many bathrooms feet does it have?: "
    u_bathrooms = gets.chomp.to_i

    user_apartment = Apartment.new(u_unit, u_rent, u_sqft, u_bedrooms, u_bathrooms)
    puts user_apartment.to_s

  when selection = "p"

    print "What's this person's name?: "
    u_name = gets.chomp.to_s
    print "How old is #{u_name}: "
    u_age = gets.chomp.to_i
    print "How much does #{u_name} make per year?: "
    u_income = gets.chomp.to_i

    user_person = Person.new(u_name, u_age, u_income)
    puts user_person.to_s
  end
print "Would you like to make another thing? (y/n): "
user_option = gets.chomp.downcase[0]
end

