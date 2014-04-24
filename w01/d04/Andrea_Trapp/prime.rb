def prime?(number)
  
  i = 2
  
  while i < number
  	return false if number%i == 0
  	i += 1
  end

  true

end

# prime?(7)
# prime?(16)
