require 'bundler/setup'
Bundle.require

get '/' do
	erb :root
end

get '/books/:name' do
	@name = params[:name]
	word_counts(book_name)
	erb :show
end

def word_counts(book_name)
	# { "the" => 198003, ... }
	word_counts = {}
	words(book_name).each do |word|
		if word_counts.has.key?(word)
			word_counts[word] +=1
		else
			word_counts[word] = 1
		end
	end
	word_counts
end

def words(book_name)
	book_text(book_name).split(' ')
end

def book_text(book_name)
	f = File.open(book_name, 'r')
	text = f.read
	f.close
	end
end