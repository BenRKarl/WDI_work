def palindrome? (string)
  string.downcase.gsub(" ","") == string.downcase.gsub(" ","").reverse
end

# EXAMPLES

palindrome?("anna") ~> true
palindrome?("a nut for a jar of tuna") ~> true
