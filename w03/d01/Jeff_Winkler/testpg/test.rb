
require 'pg'

connection = PG.connect(:dbname => 'testdb')

resp = connection.exec("SELECT * FROM test;")

na = resp.map {|x| x}

puts na




connection.close


