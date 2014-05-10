
module ElectronicPublication
  def copy_paste
    'I copy pasted'
end
end

module PrintPublication
def medium_info
  'I am a thing you can hold'

module Art
  def affect_people
    'I can affect people'
  end
end

module Teach
  def teach-people
    'I can teach people'
  end
end

module NonFiction
  def historical_fact
    'In that year, this thing happened'
  end
end

class Manuscript
  include Art
  include Teach
  def communicate
    "I communicate something"
  end

end

class Book < Manuscript
  def cover
    'I have a cover page'
end
end


class Scroll < Manuscript
  def roll_up
    'i can roll'
  end
end

the_great_WDIsby = Book.new.extend(Fiction).extend(PrintPublication)
wdipedia = Book.new.extend(NonFiction).extend(ElectronicPublication)
# extend is a method that takes modules as arguments
