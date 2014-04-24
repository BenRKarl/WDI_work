#use require prime 
#1
def prime? (i)
(2..Math.sqrt(i)).each { |n| return false if i % i == 0}
end

#1.5
def primer(i)
		return false if number <= 1
	for i in(2..Math.sqrt(i))
		return false if number % i == 0
	end
	true
end
#******** use logic on self
#1.6!!
def primer
		return false if self <= 1
	for i in(2..Math.sqrt(self))
		return false if self % i == 0
	end
	true
end
###*********

#2
def isPrime (i)
	
	if i > 2
	check = i - 1
		while check > 2
			return false if i % check == 0
			1 -= 1
		end
		true
	end


#3

