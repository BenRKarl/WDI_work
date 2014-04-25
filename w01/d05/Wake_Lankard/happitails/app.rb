require_relative "client"
require_relative "shelter"
require_relative "animal"

my_shelter = Shelter.new("wakeshelter", "shaddress")
my_animal = Animal.new("Rex", 5, "dog")
my_client = Client.new("Alice", 22)
