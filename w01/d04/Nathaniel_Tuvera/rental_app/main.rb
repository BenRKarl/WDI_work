
require_relative './building'
require_relative './person'
require_relative './apartment'

# madison = Building.new("31st", "old", false, false, 10, [])

# jim = Person.new("jim", 29, "male")
# tom = Person.new("tom", 29, "male")

# test1 = Apartment.new(2400, false, 800, 2, 1)
# test2 = Apartment.new(2000, false, 750, 2, 1)
# test1.renters << jim
# test2.renters << tom

# puts test1
# puts test2.inspect
def menu
puts  "Welcome to your Apartment Tracker"
print "Please Choose an option 1) Building 2) Tenant 3) Apartment "
main_choice = gets.chomp.to_i
  if main_choice = 1
    print "Building:: Please select an option: "
    puts "1) Register building 2) Status of building"
    sub_menu1 = gets.chomp
    if sub_menu == 1
      puts "please indicate Address..."
      @address = gets.chomp
      puts "the number of floors..."
      @num_floors = gets.chomp
      puts "Building Style..."
      @style = gets.chomp
      puts "if it has a doorman..."
      @has_doorman = gets.chomp
      puts "if it is a walk-up..."
      @is_walkup = gets.chomp
      puts "any included apartments..."
      @apartments = gets.chomp
      Building.new(@address, @style, @has_doorman, @is_walkup, @num_floors, @apartments)
    elsif sub_menu == 2
      puts "Buildings"
    end
  elsif main_choice == 2
    print "Tennant:: Please Select an option: "
    puts "1) Enter new tenant 2) Status of tenant"
    sub_menu2 = gets.chomp
  elsif main_choice == 3
    print "Apartment:: Please Select an option:"
    puts "1) Enter new apartment 2) Status of apartment"
    sub_menu3 = gets.chomp
    end
end

menu
