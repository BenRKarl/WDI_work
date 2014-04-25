#in file, write a method prime? that takes an integer, and returns true if prime
# and false if it is not prime.

def prime?(number)
  return false if number <= 1
  i = 2

  while i < number
    if number%i == 0
    i += 1
  end
end

#another correct method

def matt_prime?(number)
  return false if number <= 1

  for i in 2..Math.sqrt(number))
    return false if number % i == 0
  end
    true
end

#another way
class Integer
  def prime?
    return false if self <= 1
    for i in (2..Math.sqrt(self))
      return false if self % i == 0
    end
      true
    end
  end

class String
  def the_great
    return self + "...the great"
  end
end

$ pry
[1] pry(main)> class String
[1] pry(main)*   def the_great
[1] pry(main)*     return self + "...the great"
[1] pry(main)*   end
[1] pry(main)* end
nil
[2] pry(main)> "Tim".the_great
"Tim...the great"
[3] pry(main)>
