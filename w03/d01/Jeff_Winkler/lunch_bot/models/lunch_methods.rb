
def disp_all
  response = run_sql('SELECT * FROM lunches;')
  lunches = response.map {|food| food}
end

def new_lunch(lunch, resto)
  statement = "INSERT INTO lunches (lunch_name, restaurant) VALUES ('#{lunch}', '#{resto}');"
  run_sql(statement)
  return 0;
end

def count_it(lunch_id, new_count)
  statement = "UPDATE lunches SET picked_count=#{new_count} WHERE id=#{lunch_id};"
  run_sql(statement)
  return 0;
end

def del_lunch(id)
  statement = "DELETE FROM lunches WHERE id=#{id};"
  run_sql(statement)
  return 0;
end


def run_sql(sql_st)
  connection = PG.connect(:dbname => 'wdi_lunch')
  response = connection.exec(sql_st)
  connection.close
  return response
end

