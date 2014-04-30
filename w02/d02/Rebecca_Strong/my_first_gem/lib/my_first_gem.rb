require "my_first_gem/version"

module MyFirstGem
  # Your code goes here...
  def self.verb
    verb = ["succeed", "fail (fast)", "write", "think"].sample
    "to #{verb}"
  end
end
