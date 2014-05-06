require 'pg'

connection = PG.connect(:dbname => 'testdb')

resp = connection.exec("SELECT * FROM test;  ")

connection.close


