module MyFirstGem
  VERSION = "0.0.1"
  require "my_first_gem/version"

module MyFirstGem
  def self.verb
    verb = ["succeed," "fail fast", "to write", "think"].sample
    "to #{verb}"
  end
end

end
