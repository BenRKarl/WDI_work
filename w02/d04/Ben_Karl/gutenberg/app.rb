require "bundler/setup"
Bundler.require

#Or select a specific book
#Get text of book
#Parse text
#Store the results in a new file

def word_counts(book_name)
  word_counts = {}
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
  book_text(book_name).split(" ")
end

def sort_counts(book_name)
  word_counts(book_name).sort_by { |word, counts| -word.length }
end

def book_text(book_name)
  f = File.open(book_name, "r")
  text = f.read
  f.close
  text
end

get "/" do
  erb :root
end

get "/books/:name" do
  @name = params[:name]
  book_name = "books/#{@name}"
  @word_counts = sort_counts(book_name)
  erb :show
end
