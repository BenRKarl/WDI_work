
require 'pg'
require 'active_record'

database_name = "spiders_and_legs"
ActiveRecord::Base.establish_connection("postgres://localhost#{database_name}")

class Leg < ActiveRecord::Base
  belongs_to :spider
end

class Spider < ActiveRecord::Base
  has_many :legs
end


spider = Spider({name: Charlette})
legs   = Leg.create({item: 'Ice cream cone', which_leg: 'first left'})

puts "Spider: + spider.name
puts "Leg: spider.legs.first.item"
