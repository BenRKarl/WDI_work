class Lunch

  attr_accessor :lunch_name, :restaurant, :picked_count
  attr_reader :id

  def initialize(options)
    @id = options.fetch('id')
    @lunch_name = options.fetch('lunch_name')
    @restaurant = options.fetch('restaurant')
    @picked_count = options.fetch('picked_count')
  end

  def to_s
    "#{@lunch_name} : at #{@restaurant}"
  end


  def save
    sql_statement = "UPDATE lunches SET lunch_name='#{@lunch_name}', restaurant='#{@restaurant}' WHERE id=#{@id};"
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

  #  Lunch.find(2)
  def self.find(id_to_find)
    sql_statement ="SELECT * FROM lunches WHERE id=#{id_to_find};"
    response = run_sql(sql_statement)
    Lunch.new(response.first)
  end


  def self.create(lunch_hash)
    lunch = lunch_hash['lunch']
    picked_count = picked_count_hash['picked_count']
    sql_statement = "INSERT INTO lunches (lunch_name, picked_count) VALUES ('#{lunch_name}', '#{picked_count}') RETURNING *;"
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