ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'wdi_kittens'
  })

# ActiveRecord::Base.establish_connection({'postgres://localhost/wdi_kittens'})
