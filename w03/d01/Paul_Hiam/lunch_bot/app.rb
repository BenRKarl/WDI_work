require 'bundler/setup'
Bundler.require

get '/' do
	redirect '/lunches'
end

get '/lunches' do

connection = PG.connect(:dbname => 'wdi_lunch')
  sql_statement = 'SELECT * FROM lunches;'
  response = connection.exec(sql_statement)

  @lunches = response.map do|lunch| 
  	{'lunch_name' => lunch['lunch_name'], 'picked_count'=> lunch['picked_count'], 'restaurant'=> lunch['restaurant']}
  end
  connection.close

	erb :lunches
end

post '/lunches/new' do
	redirect '/lunches/new'
end

get '/lunches/new' do
	erb :new

end
post '/lunches/create' do
	lunch       = params[:lunch_name] 
	restaurant  = params[:restaurant_name]
	connection  = PG.connect(:dbname => 'wdi_lunch')

	sql_statement = "INSERT INTO lunches (lunch_name, restaurant) VALUES('#{lunch}', '#{restaurant}');"

	connection.exec(sql_statement)

	connection.close

	redirect '/lunches'
end

post '/lunches/random' do
	connection = PG.connect(:dbname => 'wdi_lunch')
  sql_statement = 'SELECT * FROM lunches;'
  response = connection.exec(sql_statement)

  @lunchset = response.map do|lunch| 
  	{'lunch_name' => lunch['lunch_name'], 'picked_count'=> lunch['picked_count'], 'restaurant'=> lunch['restaurant']}
    end
  @r_num_top = @lunchset.length
  @r_num    = rand(@r_num_top) - 1
  @random  = @lunchset[@r_num]
  @name = @random['lunch_name'].to_s

  connection.exec(
  	"UPDATE lunches SET picked_count= picked_count + 1 WHERE lunch_name='#{@name}';"
  	)
  
  #
  # @random = response2.map do|lunch| 
  # 	{'lunch_name' => lunch['lunch_name'], 'picked_count'=> lunch['picked_count'], 'restaurant'=> lunch['restaurant']}
  # end

  connection.close
	erb :random
end
