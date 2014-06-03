def palindrome?(string)
  string.gsub!(" ", "")
  string.downcase
  string == string.reverse.downcase
end
