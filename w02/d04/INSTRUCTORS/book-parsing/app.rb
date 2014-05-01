require 'bundler/setup'
Bundler.require

# NOTES
# Now the "books" and the "parse_data" directory are part
# of the domain knowledge, so they should be extracted,
# which gives us an idea for what objects we could create

require_relative 'book'
require_relative 'parse_data'

[Book::DIR, ParseData::DIR].each do |directory|
  next if File.directory?(directory)
  Dir.mkdir(directory)
end

get '/' do
  erb :root
end

get '/books/:name' do
  @name = params[:name]
  @word_counts = sort_counts(@name)
  erb :show
end

def sort_counts(book_name)
  book = Book.new(book_name)
  book.word_counts.sort_by { |word, counts| -word.length }
end
