class Dog < ActiveRecord::Base

  attr_accessor :name :age :breed
  attr_reader :id

  def initialize (id, name, age, breed)
    @id = id
    @name = name
    @age = age
    @breed = breed
  end
end
