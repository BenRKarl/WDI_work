require "Faker"

class Person

  attr_reader :name, :tagline, :email
  def initialize
    @name = Faker::Name.name
    @tagline = Faker::Company.bs
    @email =Faker::Internet.email
  end
  def tweak_email(email)
    new_email = []
    new_email = email.split("@")
    new_email = name.downcase.gsub(" ", "_") + "@" + new_email[1]
    new_email
  end


end

my_person =  Person.new
puts "Name: #{my_person.name}."
puts "Tagline: #{my_person.tagline}."
puts "Email: #{my_person.tweak_email(my_person.email)}."
