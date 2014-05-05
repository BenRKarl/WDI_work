
module Art
  def affect_people
    "Art is what you can get away with."
  end
end


class Manuscript
  include Art
  def communicate
    "communicate something"
  end
end

class Book < Manuscript
  def cover_page
    "I have a cover"
  end
end

class Scroll < Book
  def roll_up
    'i can roll'
  end
end
