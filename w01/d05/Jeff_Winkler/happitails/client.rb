class Client

attr_accessor :name, :age, :pets

  def initialize(name, age, pets={})
    @name = name
    @age = age
    @pets = pets
  end

  def pet_count
    @pets.count
  end

  def to_s
    #Beth is a 30 year old with 0 pets
    "#{@name} is a #{@age} year old with #{pet_count} pets"
  end

  def description
    if @pets.empty?
      puts "#{@name} is a #{@age} year old with no pets."
    else
      if pet_count == 1
        print "#{@name} is a #{@age} year old with #{pet_count} pet:  "
      else
        print "#{@name} is a #{@age} year old with #{pet_count} pets:  "
      end
      @pets.each do |pet_name, type|
        print "#{pet_name} the #{type.species}"
        if pet_name != @pets.keys.last
          print ", "
        end
      end
      puts ""
    end
  end

  def display_pets
    @pets.keys.each {|x| puts x}
  end

  def accept_pet(name, type)
    @pets[name] = type

  end

  def give_away_pet(name)
    @pets.delete(name)
  end


end
