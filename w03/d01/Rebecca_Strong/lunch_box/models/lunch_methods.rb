
def display_all
response = run_sql('SELECT * FROM lunches;')
lunches = response.map {|grub| grub}
end

def insert_lunch(lunch, restaurant)
statement = "INSERT INTO lunches (lunch_name, restaurant) VALUES ('#{lunch}', '#{restaurant}');"
run_sql(statement)
return 0;
  end

def count_it(lunch_id, new_count)
  statement = "UPDATE lunches SET picked_count=#{new_count} WHERE id=#{lunch_id};"
  run_sql(statement)
  return 0;
end


def run_sql(stmnt)
  connection = PG.connect(:dbname => 'wdi_lunch')
  response = connection.exec(stmnt)
  connection.close
  return response

end
