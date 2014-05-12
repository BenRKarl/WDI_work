# database_url = ENV['DATABASE_URL'] || 'postgres://localhost/wdi_kittens'

# ActiveRecord::Base.establish_connection(database_url)

ActiveRecord::Base.establish_connection({

adapter: 'postgresql',
database: 'wdi_kittens'
})
