require 'bundler'
Bundler.require


get '/' do 

	erb :root
end


def book_text(book_name)
	f = File.open(book_name, 'r')
	text = f.read
	f.close
	text
end

def words(book_name)
	book_text(book_name).delete(',.:!;?[]').split(' ')
	# .downcase
end	

def word_count(book_name)
	word_count = {}
	words(book_name).each do |word|
		if word_count.has_key?(word)
			word_count[word] += 1
		else 
			word_count[word] = 1
		end		
	end
	word_count
end


def sort(book_name)
	word_count(book_name).sort_by { |word, count| -word.length }
	#-count
	# count: word count low to high
end

get '/books/:name' do
	@name = params[:name]
	@display = params[:name].split('/').last.split('.').first.gsub('-',' ')
	book_name = "books/#{@name}"	
	# @word_count = word_count(book_name)
	@sorted = sort(book_name)
	erb :show
end


