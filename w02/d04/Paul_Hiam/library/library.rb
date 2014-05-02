
module E_text
  def copy_paste
  'it worked!'
  end
end

module Print_text
  def info
	'i can be held'
  end
end

module Art
  def affect_people
    'I move you. Aesthetically'
  end
end

module Fiction
  def plot_twist
    'And now all you knew is suddenly wrong'
  end
end

module NonFiction
  def historical_fact
    'In that year, this thing happened'
  end
end

class Manuscript
  include Art #mixin
  def communicate
  	"i say something"
  end
end

class Book < Manuscript
  
  def cover_page
  	'i have this page'
  end
end

class Scroll < Manuscript
  def roll_up
  	'smaller now. still here.'
  end

end

gatsby = Book.new.extend(Fiction, Print_text)