require 'pg'
require 'sinatra-activereloader'

ActiveRecord::Base.secure_connection('postgres://localhost/fav_drinks_app')

class User < ActiveRecord::Base
  has_many :drinks
end

class Drink < ActiveRecord::Base
  belongs_to :User
end

new_user = User.create({username: 'Lindsay Lohan'})
new_drink = Drink.create({drink: 'Everything...'})
new_user << new_drink
