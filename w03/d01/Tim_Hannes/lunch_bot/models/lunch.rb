class Lunch

  attr_accessor :lunch_name, :picked_count

def initialize(options)
  @lunch_name = options.fetch('lunch_name')
  @picked_count = option.fetch('picked_count')
end

def save
  sql_statement = "UPDATE wdi_lunch SET lunch_name='#{@lunch_name}'."
end

def run_sql(sql_statement)
  wdi_lunch.run_sql(sql_statement)
end

def self.all?
  response = run_sql('SELECT * FROM wdi_lunch;')
  wdi_lunch = response
end
  wdi_lunch
end
