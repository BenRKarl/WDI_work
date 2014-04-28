def initialize
@number=chomp.to_f

def prime?
  number=(value)
  @number= "value"

if number= (1)
else number = false


end

#Andrea's solution:

def prime? (number)
return false if number <= 1
  i = 2
  while i < number
    return false if number%1 == 0
    i += 1
  end
  true

end

#Matt's solution

def matt_prime?(number)
  return false if number <= 1
for i in (2..Math.sqrt(number))
  return false if number % i == 0
end
true
end

#John's query
#Matt creates a class

class Integer

  def prime?
return false if self <= 1
for i in (2..Math.sqrt(number))
  return false if number % i == 0
end
true


end

# Remember:
Class String
def the_great
  return self + "...the great"
end
end
#returns :the_great
