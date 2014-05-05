
module Art
  def affect_people
    "I can affect people."
  end
end

module ElectronicPublication
  def copy_paste
    "I copy pasted"
  end
end

module PrintPublication
  def medium_info
    "I am a thing you can hold."
  end
end

module Fiction
  def plot_twist
    "Everything you thought you knew is suddely wrong."
  end
end

module NonFiction
  def truthiness
    "I am telling you a true story."
  end
end

class Manuscript
  include Art
  def communicate
    "I communicate something."
  end
end

class Book < Manuscript
  def cover_page
    "I have a cover page."
  end
end

class Scroll < Manuscript
  def roll_up
    "I can roll"
  end
end


the_great_WDIsby = Book.new.extend(Fiction, PrintPublication)
wdipedia = Book.new.extend(NonFiction, ElectronicPublication)