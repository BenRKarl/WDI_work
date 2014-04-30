require "my_first_gem/version"

module MyFirstGem
  def self.verb
    verb =["try", "succeed", "fail(fast)", "write", "think"].sample
    "to #{verb}"
      end
end


# MyFirstGem.verb
