require 'faker'

class Person

  def initialize
    @name = Faker::Name.name
    @email = Faker::get_email
    @second_email = Faker::Internet.email(@name)#the (@name) returns a specific name rather than random name eg. rebecca.strong@fakeemail.com > zapfdingbats@fakemail.com
    @tagline = tagline
  end

  # #Nessa's solution
# def initialize
#   @name ...
#   @email = get_email
  # def get_email
  #   @company = Faker::Company.name.gsub("-", "")
  #   @email_name = @name.gsub(" ", "_")
  #   @email = "#{email_name}"
