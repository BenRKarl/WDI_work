require "my_first_gem/version"

module MyFirstGem
  def self.verb
    verb = ["succeed","fail","race","type","search"].sample
    "to #{verb}"
  end
end
