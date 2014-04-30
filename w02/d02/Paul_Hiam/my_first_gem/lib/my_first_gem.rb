require "my_first_gem/version"

module MyFirstGem
  # Your code goes here...
  def self.verb
  	verb = ['kick hard', 'bite', 'hug warmly', 'boil as milk', 'expose to cosmic forces'].sample
  	"to #{verb}"
  end
end
MyFirstGem.verb
