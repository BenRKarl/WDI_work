module EPub
	def copy_paste
	  "I copy paste"	
	end
end

module PrintPub
	def medium_info
		"I can be held"
	end
end


module Art
	def affect_people
		"I can affect people"
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
		'I can roll'
	end
end


mybook = Book.new.extend(PrintPub)
puts mybook.medium_info

great_WDI = Book.new.extend(NonFiction, EPub)
puts great_WDI.historical_fact
puts great_WDI.copy_paste


# class can inherit one class but multiple modules






