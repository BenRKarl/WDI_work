require 'bundler'
Bundler.require

get '/' do 
  
end

get '/lunches' do
#display all existing lunches
#Create lunch button
#randon lunch button
  response = do_sql('SELECT * FROM lunches;')
  @lunches = response.map do |lunch| 
    { 'lunch_name'=>lunch['lunch_name'], 
      'picked_count'=>lunch['picked_count'], 
      'restaurant'=>lunch['restaurants']}
  end

  erb :show

end

get '/lunches/new' do
#form: lunch name, restaurant
  erb :index
end

post '/lunches/create' do
#create a lunch in the DB 
#redirect to /lunches
  lunch_name = params[:lunch_name]
  
  restaurant = params[:restaurant]
  statement = "INSERT INTO lunches (lunch_name, restaurants) VALUES ('#{lunch_name}', '#{restaurant}');"
  do_sql(statement)
  binding.pry
  redirect "/lunches"    
end

get '/lunches/random' do
#display random lunch
#incriment pick_count
  statement = "SELECT index FROM lunches;"
  response = do_sql(statement);

  indicies = response.map do |x| x['index']  end
  index = indicies.sample

  statement = "UPDATE lunches SET picked_count = picked_count + 1 WHERE index = #{index};"
  do_sql(statement)

  statement = "SELECT * FROM lunches WHERE index = #{index};"
  response = do_sql(statement)
  @lunches = response.map do |lunch| 
      { 'lunch_name'=>lunch['lunch_name'], 
        'picked_count'=>lunch['picked_count'], 
        'restaurant'=>lunch['restaurants']}
end



  erb :show

end

def do_sql(statement)
  
  connection = PG.connect(:dbname => 'wdi_lunch')
  sql_statement = statement
  connection.exec(sql_statement)
end

  # def self.create(book_hash)
  #   title = book_hash['title']
  #   author = book_hash['author']
  #   sql_statement = "INSERT INTO books (title, author) VALUES ('#{title}', '#{author}') RETURNING *;"
  #   response = run_sql(sql_statement)
  #   Book.new(response.first)
  # end
