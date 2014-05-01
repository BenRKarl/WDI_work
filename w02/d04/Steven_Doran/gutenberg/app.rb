require 'bundler/setup'
Bundler.require

get '/' do 
  erb :root
end

get '/books/:name' do 
  @name = params[:name]
  book_name = "books/#{@name}"
  @word_count = sort_count(book_name)
  erb :show
end

def sort_count(book_name)
  word_count(book_name).sort_by { |word, counts| -counts }
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

def words(book_name)
  book_text(book_name).split(' ').map { |word| word.downcase}
end

def book_text(book_name)
  f = File.open(book_name, 'r')
  text = f.read
  f.close
  text
end















