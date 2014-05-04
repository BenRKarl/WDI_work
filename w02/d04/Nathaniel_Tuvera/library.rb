module Art
  def affect_people
    "I can affect people"
  end

module ElectronicPublication
  def copy_paste
    "I copy and paste"
  end
end

module PrintPublication
  def medium_info
    "I am thing you can hold"
  end
end

end
class Manuscript
  include Art
  def communicate
    "I communicate something"
  end
end

class Book < Manuscript
  def cover_page
    "I have a cover-page"
  end

  end
end

class Scroll < Manuscript
  def roll_up
    "Time to unwiiiiiiiiind."
  end
end
