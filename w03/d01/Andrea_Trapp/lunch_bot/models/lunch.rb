class Lunch

	attr_accessor :lunch_name, :restaurant, :picked_count
	attr_reader :id


	def initialize(options)
		@id = options.fetch('id')
		@lunch_name = options.fetch('lunch_name')
		@picked_count = options.fetch('picked_count')
		@restaurant = options.fetch('restaurant')
	end


	def to_s
		"#{@lunch_name} is picked #{@picked_count} times"
	end


	def save
      sql_statement = "UPDATE lunches SET lunch_name='#{@lunch_name}', restaurant='#{restaurant}', picked_count=#{@picked_count} WHERE id=#{@id};"
      run_sql(sql_statement)
  	end


	def run_sql(sql_statement)
    	Lunch.run_sql(sql_statement)
 	end


 	def self.all
      response = run_sql('SELECT * FROM lunches;')
      lunches = response.map do |lunch_row_hash|
        Lunch.new(lunch_row_hash)
      end
      lunches
  	end

  	
  	def self.find(id_to_find)
      sql_statement = "SELECT * FROM lunches WHERE id=#{id_to_find};"
      response = run_sql(sql_statement)
      Lunch.new(response.first)
  	end


	def self.create(lunch_hash)
      lunch_name = lunch_hash['lunch_name']
      restaurant = lunch_hash['restaurant']
      sql_statement = "INSERT INTO lunches (lunch_name, restaurant) VALUES ('#{lunch_name}', '#{restaurant}') RETURNING *;"
      response = run_sql(sql_statement)
      Lunch.new(response.first)
  	end


  	def self.random(random_id)
  		random_lunch = Lunch.find(random_id)		
  		random_lunch.picked_count = random_lunch.picked_count.to_i + 1
  		random_lunch.save
   	end


	# def self.update(lunch_hash)
	#   id = lunch_hash['id']
 	#   lunch_name = lunch_hash['lunch_name']
 	#   restaurant = lunch_hash['restaurant']
 	#   picked_count = lunch_hash['picked_count']
 	#   update_lunch = Lunch.find(id)		
 	#   update_lunch.save      
 	# end


	def self.run_sql(sql_statement)
      connection = PG.connect(:dbname => 'wdi_lunch')
      response = connection.exec(sql_statement)
      connection.close
      return response
  	end

end