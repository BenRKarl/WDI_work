require 'faker'

class Person
  attr_accessor :email2, :catch_phrase

  def initialize
  	@name = Faker::Name.name
  	@email = get_email
  	@email2 = Faker::Internet.email(@name) 
  	@catch_phrase = Faker::Company.catch_phrase
  end

  def get_email
  	company = Faker::Company.name.delete('and').delete(',').gsub(" ","-") 
  	email_name = @name.delete('.').gsub(" ","_")
    @email = "#{@email_name}@#{@company}.com"
  end	


end	

#3.times { puts Person.new.email2 }

3.times { puts Person.new.catch_phrase }
