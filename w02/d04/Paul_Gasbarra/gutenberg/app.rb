
require 'bundler/setup'
Bundler.require

# Get text
# Count words
# Display text

# Random book
# select book
# get text
# parse text
# store in file
#
#

get '/' do
  erb :root
end

get '/random' do
  end

get 'book/:name' do
 @name = params[:name]
 books_name = "books/#{@name}"
 @word_counts = word_counts(book_name)
 erb :show
end

def word_counts(book_name)
  word_counts = {}
  words(book_name).each do
    |word|
    if word_counts.has_key?(word)
      word_counts[word] += 1
    else
     word_counts[word] += 1
    end
  end

end

def sort_counts(book_name)
  word_counts(book_name).sort_by {|word, counts| counts}
end

def words(book_name)
  book_text(book_name).split(' ')
end

def book_text(book_name)
  f = File.open(book_name, 'r')
  text = f.read
  f.read
end
