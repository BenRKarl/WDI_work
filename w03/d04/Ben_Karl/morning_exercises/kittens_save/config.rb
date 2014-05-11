database_name = "kittens_app"

ActiveRecord::Base.establish_connection(
  "postgres://localhost/#{ database_name }"
  )
