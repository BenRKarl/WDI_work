
def prime?(interger)
	i = 2
	return false if interger%i == 0
	
	if interger % interger && 1 == 0
		return true

	else
		return false

	end 

end 

def prime2?(number)
	return false if number <= 1
	i = 2

	while i < number
		return false if number%i == 0
		i += 1
	end 

	true
end 

prime2(2)