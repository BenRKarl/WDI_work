class Lunch

  attr_reader :name, :restaurant, :count

  def initialize(lunch_hash)
    @name = lunch_hash.fetch('lunch_name')
    @restaurant = lunch_hash.fetch('restaurant')
    @count = lunch_hash.fetch('picked_count')
  end



  def self.run_sql(sql_stmt)
    connection = PG.connect(:dbname => 'wdi_lunch')
    response = connection.exec(sql_stmt)
    connection.close
    return response
  end

  def run_sql(sql_stmt)
    Lunch.run_sql(sql_stmt)
  end


  def self.all
    response = run_sql('SELECT * FROM lunches;')
    lunches = response.map do |lunch|
      Lunch.new(lunch)
    end
    lunches
  end

  def self.create(lunch_hash)
    lunch_name   = lunch_hash['lunch_name']
    restaurant   = lunch_hash['restaurant']
    picked_count = lunch_hash['picked_count']
    sql_stmt     = "INSERT INTO lunches (lunch_name, restaurant, picked_count) VALUES ('#{lunch_name}', '#{restaurant}', 
      '#{picked_count}') RETURNING *;"
    response = run_sql(sql_stmt)
    Lunch.new(response.first)
  end  


  def self.random
    rand_lunch   = Lunch.all.sample
    lunch_name   = rand_lunch.name
    restaurant   = rand_lunch.restaurant
    picked_count = rand_lunch.count
    sql_stmt     = "UPDATE lunches SET picked_count='#{picked_count.to_i + 1}' WHERE lunch_name='#{lunch_name}'"
    response = run_sql(sql_stmt)
    rand_lunch
  end


end
