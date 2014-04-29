require_relative "animal.rb"
require_relative "client.rb"


hank = Client.new("Hank", 33)
bertie = Animal.new("Bertie", 4, "cat")

hank.pets.push(bertie)
