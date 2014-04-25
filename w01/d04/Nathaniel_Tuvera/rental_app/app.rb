require_relative './building'
require_relative './person'
require_relative './apartment'

puts "Welcome to the Apartment Tracker"

def menu
 print "Would you like to do? (c)reate, (r)ead, upd(a)te, (p)urge  (q)uit:"
 main_menu = gets.chomp.downcase
 case main_menu
  when 'c'
    print "What object would you like to create? (p)erson, (a)partment, (b)uilding   :"
    create_menu = gets.chomp.downcase
      case create_menu
        when 'p'
          puts "please enter the following: (name, age, gender, apartment (if applicable))   :"
          Person.new(@name, @age, @gender, @apartment)  << gets.chomp
        when 'a'
          puts "please enter the following: (price, if occupied, square footage, number of bed rooms, number of bathrooms, current tenants (if applicable))   :"
          #
        when 'b'
          puts "please enter the following: (address, building style, if it has a doorman, if it is a walk up, number of floors, apartments in building (if applicble))   :"
          #
      end
  when 'r'
    print "What list would you like to read? (p)erson, (a)partment, (b)uilding   :"
    read_menu = gets.chomp.downcase
      case read_menu
        when 'p'
          person.to_s
        when 'a'
          apartment.to_s
        when 'b'
          building.to_s
      end
  when 'a'
    print "What object would you like to update? (p)erson, (a)partment, (b)uilding   :"
  when 'p'
    print "What onject would you like to purge? (p)erson, (a)partment, (b)uilding   :"
  when 'q'
    exit(0)
  end

end


menu
