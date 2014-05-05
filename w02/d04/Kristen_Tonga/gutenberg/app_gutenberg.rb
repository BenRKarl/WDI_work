require 'bundler/setup'
Bundler.require

get '/' do
  erb :index
end

get '/books/:name' do
  @name = params[:name]
  book_name = "books/#{@name}"
  @word_counts =
    sort_counts(book_name)
  erb :show
end

def sort_counts(book_name)
  word_counts(book_name).sort_by { |word, counts| counts }.reverse
end

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
  book_text(book_name).split(' ').map {|word| word.downcase}
end

def book_text(book_name)
  f = File.open(book_name, 'r')
  text = f.read
  f.close
  text
end
