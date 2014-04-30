require "my_first_gem/version"

module MyFirstGem
  # Your code goes here...
  def self.verb
  	verb = ["succed", "fail", "think"].sample
  	"to #{verb}"
  end
end

MyFirstGem.verb