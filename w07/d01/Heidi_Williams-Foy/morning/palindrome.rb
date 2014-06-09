class String
def palindrome
	pal = "radar"
	letters = downcase.scan(/\w/)
	letters = letters.reverse
  end
end

or
def palindrome?(string)
	string == string.reverse
end

