def palindrome(string)
  string.gsub!(" ", "")
  string.downcase == string.reverse
end
