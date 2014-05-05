require 'bundler/setup'
Bundler.require

get '/' do

#   [4] pry(main)> id = GutenbergBookFinder.random_id
# 33291
# [5] pry(main)> id = GutenbergBookFinder.book_info(33291)
# []
# [6] pry(main)> id = GutenbergBookFinder.book_text(33291)
  erb :root
end

get '/books/:name' do
  @book_name = params[:name]
  book_name = "books/#{@book_name}"
  @word_counts = sort_counts(book_name)
  erb :show
end


def word_counts(book_name)
  word_counts = {}
  words = []

  words(book_name).each do |word|
    if word_counts.has_key?(word)
      word_counts[word] += 1
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
  text

  # File.read(book_name) do |f|
  #   f.read
  # end
end

def sort_counts(book_name)
  word_counts(book_name).sort_by {|word, count| word}
end


