require "my_first_gem/version"

module MyFirstGem
  # Your code goes here...
  def self.verb
    verb = ["try", "succeed", "write", "to do"].sample
    "to #{verb}"
  end
end

MyFirstGem.verb

