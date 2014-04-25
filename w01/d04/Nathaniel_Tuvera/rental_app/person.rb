class Person
  attr_accessor :name, :age, :gender, :apartment

  def initialize(name, age, gender, apartment=nil)
    @name      = name      #string
    @age       = age       #integer
    @gender    = gender    #string
    @apartment = apartment #apartment obj? link to Apartment.rb?
  end

  def to_s  #puts to screen"
    puts "#{@name} is a #{@age} year old #{@gender} has been registered."
    if @apartment !=nil
      puts "#{@name} lives at #{apartment}"
    else
      puts "#{@name} does not reside in your building"
  end
end
