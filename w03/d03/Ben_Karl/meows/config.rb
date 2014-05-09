ActiveRecord::Base.establish_connection(
  ENV['DATABASE_URL'] || "postgres://localhost/wdi_meows_app"
  )
