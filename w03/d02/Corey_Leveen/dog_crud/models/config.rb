class Dog < ActiveRecord::Base
ActiveRecord::Base.establish_connection( :adapter => "postgresql", :database => "wdi_dogs" )
end
