database_url = ENV['DATABASE_URL'] || 'postgres://localhost/wdi_parent_offspring'
ActiveRecord::Base.establish_connection(database_url)
