

module Art
  def affect_people
    'I can affect people'
  end
end

module ElectronicPublication
  def copy_paste
    'I copy pasted'
  end
end

module PrintPublication
  def medium_info
    "I am think you can hold"
  end
end


class Manuscript

  include Art
  attr_accessor :letters

  def initialize
    @letters = "fjksdlf"
  end

  def communicate
    "I communicate something"
  end

end

class Book < Manuscript
  def cover_page
    "I have a cover page!"
  end

end


class Scroll < Manuscript
  def roll_up
    'i can roll'
  end
end

