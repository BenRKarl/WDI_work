# require 'animal.rb'
# require 'shelter.rb'

class Client

  attr_reader :name, :age
  attr_writer: :animals

def initialize(name, age)
@name = name
@age = age
@animals = animals
# @@clients = 0


def to_s
  puts "#{name} is #{age}" + animals
end


c = Client.new('Beth', 30')
puts c.inspect





