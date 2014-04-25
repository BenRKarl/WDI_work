require_relative  "person"
require_relative "building"
require_relative "apartment"

#my_person = Person.new("name", 21, 23)

persons = []
apartments = []
buildings = []
response = ""

while response != "q"
  print "add a (p)erson, (b)uilding, (a)partment, or (q)uit: "
  response = gets.chomp[0]
  

  case
  when response == "p"
    print "enter a name: "
    name = gets.chomp
    print  "age: "
    age = gets.chomp
    print "income: "
    income = gets.chomp

    persons.push(Person.new(name, age, income))
    

  when response == "b"
    print "enter address: "
    address = gets.chomp
    print "enter style: "
    style = gets.chomp
    print "enter floors: "
    floors = gets.chomp

    if !apartments.empty?
      print "Add an apartment: ("
      apartments.each { |a| print a.unit + " " }
      print ")"
      new_apt = gets.chomp
      new_apt = apartments[apartments.index(new_apt)] if apartments.include? new_apt
    end

    buildings.push(Building.new(address, style, floors))

    buildings[buildings.length-1].apartments[new_apt] = new_apt.to_s


    
  when response == "a"
    print "Unit name: "
    unit = gets.chomp
    print "rent: "
    rent = gets.chomp
    print "sqft: "
    sqft = gets.chomp
    print "bedrooms: "
    bedrooms = gets.chomp
    print "bathrooms: "
    bathrooms = gets.chomp

    if !persons.empty?
      print "Add a tenant: ("
      persons.each { |p| print p.name + " "}
      print ")"
      new_tenant = gets.chomp
      new_tenant = persons[persons.index(new_tenant)] if persons.include? new_tenant
      
    end


    apartments.push(Apartment.new(unit, rent, sqft, bedrooms, bathrooms))
    apartments[apartments.length-1].tenants << new_tenant

  end


    
end