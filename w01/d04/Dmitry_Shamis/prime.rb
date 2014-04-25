def prime?(number)

    return false if number <= 1

    for i in (2..Math.sqrt(number))
      return false if number % i == 0
    end
    true

end

class Integer
  def prime?
    return false if self <= 1

    for i in (2..Math.sqrt(self))
      return false if self % i == 0
    end
    true
  end
end
