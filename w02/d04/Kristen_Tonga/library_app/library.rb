
# THE MODULES
module Art
  def effect_people
    puts "I effect people"
  end
end

module ElectronicPublication
  def copy_paste
    puts "You can copy and paste"
  end
end

module PrintPublication
  def material
    puts "I am usually made of paper"
  end
end

module Fiction
  def story
    "I am a story that is not true"
  end
end

module NonFiction
  def fact
    "I am made of things that are true"
  end
end


#THE CLASSES
class Text
  def communicate
  include Art
    puts "I communicate something"
  end
end


class Book < Text
  def initialize
    @type = type
  end
  def cover
    puts "I have a cover"
  end
end

class Scroll < Text
end


#TWO EXAMPLES
the_great_WDIsby = Book.new.extend(Fiction, PrintPublication)
wdipedia = Book.new.extend(NonFiction, ElectronicPublication)
