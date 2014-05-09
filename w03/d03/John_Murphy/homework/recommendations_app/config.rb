database_url = ENV['DATABASE_URL'] || 'postgres://localhost/recommendation_app'

ActiveRecord::Base.establish_connection(database_url)
