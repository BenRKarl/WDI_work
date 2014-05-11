## Generate new project
rail new caw_caw_app -d postgresql

## rake tasks
rake -T

## create the databases in the database.yml file
rake create:db 


## create user model and migration file
rails g model 

## add changes in migration file to db
rake db:migrate

## creates new migration file 
rails g migration add_name_to_users