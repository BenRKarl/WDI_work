class Lunch

  attr_accessor :lunch_name, :restaurant

  def initialize(options)
    @lunch_name = options.fetch('lunch_name')
    @restaurant = options.fetch('restaurant')
    @count = 0
  end



  def to_s
    "#{@lunch_name} at #{@restaurant}"
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

  def self.random
    response = run_sql('SELECT * FROM lunches;')
    lunches = response.map do |lunch_row_hash|
    Lunch.new(lunch_row_hash)
    end
    lunches.sample
  end

  def self.create(lunch_hash)
    lunch = lunch_hash['lunch_name']
    restaurant = lunch_hash['restaurant']
    sql_statement = 'INSERT INTO lunches (lunch_name, restaurant, ) VALUES (#{lunch}, #{restaurant})'
  end

  def self.run_sql(sql_statement)
    connection = PG.connect(:dbname => 'wdi_lunch')
    response = connection.exec(sql_statement)
    connection.close
    return response
  end

end
