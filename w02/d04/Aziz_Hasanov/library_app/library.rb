module Epublication
	def copy_paste
		"I copy pasted"
	end
end

module PrintPublication
	def medium_info
		"I am a printed stuff"
	end
end

module Fiction
	def plot_twist
		"I am fictional"
	end
end

module NonFiction
	def fact
		"I am non-fictional"
	end
end

module Art
	def affect
		"I can affect people"
	end
end

class Manuscript
	include Art
	def communicate
		"I can communicate"
	end
end

class Book < Manuscript
	def cover
		"I have a cover page"
	end
end

class Scroll < Manuscript
	def roll
		"I can roll"
	end
end

the_great_WDIsby = Book.new.extend(Fiction, PrintPublication)
wdipedia = Book.new.extend(NonFiction, Epublication)