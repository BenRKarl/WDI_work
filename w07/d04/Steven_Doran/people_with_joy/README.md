rails new people_with_joy -d postgresql -T

rails g rspec:install

rails g model Person name:string email:string


bin/rake db:create

bin/rake db:create RAILS_ENV=test