require "faker"



class Person
  attr_accessor = :name, :email, :tagline

  def initialize
  #They're just from faker(name, email, tagline)
    @name = Faker::Name.name
    @email = Faker::Internet.email(@name)
    @tagline = tagline
  end



=begin
  EMAIL
  @email =get_email
  def email
    company = Faker::COmpany.name.gsub("","-")
    email_name = @name.gsub("","-")
    email = "#{email_name}#{company_name}.com"
  end

=end
