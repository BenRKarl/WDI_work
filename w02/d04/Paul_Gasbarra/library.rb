module ElectronicPublication
  def copy_paste
    'copy pasted'
  end
end

module PrintPublication
  def medium_info
    'I am thing you can hold'
  end
end

module Art
  def affect_people
    'I can affect people'
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
    'I have a cover page.'
  end
end

class Scroll < Manuscript
  def roll_up
    'I can roll up.'
  end
end

