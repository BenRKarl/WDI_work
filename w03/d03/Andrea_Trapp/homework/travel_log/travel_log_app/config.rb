database_name = "travel_log_db"
ActiveRecord::Base.establish_connection("postgres://localhost/#{database_name}")
