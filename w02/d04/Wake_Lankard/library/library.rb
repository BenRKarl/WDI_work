module ElectronicPublication
  def copy_paste
    "I copy and paste."
  end
end

module PrintPublication
  def medium_info
    "I am a thing you hold."
  end
end


module Art
  def affect_people
    "I can affect people."
  end
  end


class Manuscript
  include Art
  def communicate
    "I communicate something."
  end

end



class Book < Manuscript


end

class Scroll < Manuscript

end


