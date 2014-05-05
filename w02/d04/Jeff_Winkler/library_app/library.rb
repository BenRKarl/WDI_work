
module PrintPub
  def medium_type
    "I am thing you can hold"
  end
end

module ElecPub
  def copy_paste
    "copy paste"
  end
end

module Fiction
  def plot_twist
    "And new twist"
  end
end

module NonFiction
  def hist_fact
    "history"
  end
end


module Art
  def affect_people
    "I can affect people"
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
    "I have a cover page"
  end
end


class Scroll < Manuscript
  def roll_up
    "I can roll"
  end
end

d = Book.new.extend(Fiction, ElecPub)





