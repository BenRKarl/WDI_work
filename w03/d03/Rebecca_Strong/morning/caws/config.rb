database_url = ENV['DATABASE_URL'] || 'postgres://localhost/wdi_caws'
ActiveRecord::Base.establish_connection(database_url)


