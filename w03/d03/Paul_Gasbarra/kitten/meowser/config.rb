ActiveRecord::Base.establish_connection('postgres://localhost/wdi_caws_app')

database_url = ENV['DATABASE_URL'] || 'postgres://localhost/wdi_caws_app'
ActiveRecord::Base.establish_connection(database_url)
