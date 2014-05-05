class Lunch

  attr_accessor :lunch_name, :picked_count, :restaurant

  def initialize(options)
    @lunch_name = options.fetch('lunch_name')
    @picked_count = options.fetch('picked_count')
    @restaurant = options.fetch('restaurant')
  end

  def to_s
    "The meal #{@lunch_name} from #{@restaurant} has been chosen #{@picked_count} times."
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

  def self.create(lunch_hash)
    lunch_name = lunch_hash('lunch_name')
    restaurant = lunch_hash('restaurant')
    sql_statement = "INSERT INTO lunches (lunch_name, picked_count, restaurant) VALUES ('#{lunch_name}', 1, '#{restaurant}') RETURNING *;"
    response = run_sql(sql_statement)
    Lunch.new(response.first)
  end

  def self.run_sql(sql_statement)
    connection = PG.connect(:dbname => 'wdi_lunch')
    response = connection.exec(sql_statement)
    connection.close
    return response
  end

end








