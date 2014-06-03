


def palindrome?(str)
  no_spaces = str.gsub(" ", "")
  no_spaces == no_spaces.reverse
end


