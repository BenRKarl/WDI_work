require 'bundler'
Bundler.require

get '/' do
redirect '/books'
end

get '/books' do

connection = PG.connect(:dbname => 'book_app')
sql_statement = 'SELECT * FROM books;'
response = connection.exec(sql_statement)

@books = response.map do |book|
{'title'=>book['title'], 'author'=>book['author']}
end

connection.close

erb :index

end