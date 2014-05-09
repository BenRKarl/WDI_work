#connect to DB
database_name = "recipes"
ActiveRecord::Base.establish_connection("postgres://localhost/#{database_name}")
