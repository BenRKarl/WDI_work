class Shelter
  attr_accessor :name, :address, :animals, :clients, :adopted

  def initialize (name, address)
    @name = name
    @address = address
    @animals = {}
    @clients = {}
    @adopted = {}

  end

  def accept_client(name, user_name)
    @clients[name] = user_name
  end

  def accept_animal(name, user_name)
    @animals[name] = user_name
  end

  def display_animals
    @animals.each {|x, y| puts x}
  end

  def display_clients
    @clients.each {|x, y| puts x}
  end

  def animal_count
    animal_count = @animals.length
  end

  def client_count
    client_count = @clients.length
  end

  def give_away_animal #(name)
    #use shift to remove key value pair from one hash and reutnrs it as two item array
    give_away_animal = adopted[:name] = animals.delete(:name)
    #name.to_sym
    #give_away_animal = @animals.shift

  end

  def to_s
    "#{name} shelter at #{address} has #{animal_count} animals and #{client_count} people"
  end
end

=begin
#CREATING HASHES, 6 ways
  a1 = Hash.[]("flat",3,"curved",2)
  a2 = Hash.[]("flat"=>3,"curved"=>2)
  b1 = Hash["flat",3,"curved",2]
  b2 = Hash["flat"=>3,"curved"=>2]
  c1 = {"flat",3,"curved",2}
  c2 = {"flat"=>3,"curved"=>2}
  # For a1, b1, and c1: There must be
  # an even number of elements.

#SEARCHING HASHES, 4 w/ known, 2 w/ unknown
  a["flat"]    # 3
  a.[]("flat")   # 3
  a.fetch("flat") # 3
  a["bent"]    # nil
  unless defined? a
      a={}
    end
  a["flat"] = 3

#SELECTING KEY/VALUE PAIRS BY CRITERIA, 2 ways
- detect = finds first pair which evaluates as true
 # Find a tucker
  names.detect {|k,v| v=="tucker" }  # ["joe","tucker"]
  # Find a capitalized surname
  names.find {|k,v| v==v.upcase }  # ["mary", "SMITH"]
- select = returns all pairs that evaluate true
  names.select {|k,v| v=="tucker" }
  # [["joe", "tucker"], ["jane", "tucker"]]
  names.find_all {|k,v| k.count("r")>0}
  # [["mary", "SMITH"], ["fred", "jones"]]

#MOVING FROM ONE HASH TO ANOTHER
  hash_two[:key1] = hash_one.delete(:key1)

#DELETING KEY/VALUE PAIRS
- clear = removes all
- shift = unspecified key/value pair
- delete = specific key/value pair (a.delete(3))
- delete_if = reject = to delete all keys in which block = true
-



#HOW TO REMOVE USING SHIFT, USES DELETE
def shift hash, key
  [key, hash.delete(key)] # removes key/value pair
  # [key, hash[key]] # leaves key/value pair
end

=end
