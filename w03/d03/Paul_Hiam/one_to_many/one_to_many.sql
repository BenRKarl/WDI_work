Each sheepdog has many sheep to herd. Each sheep belongs to a dog. 
(Who will win the county sheepdog trials?)

CREATE DATABASE dog_sheep;

CREATE TABLE dogs (
id serial4 PRIMARY KEY,
name varchar(150),
breed varchar(255)
);

CREATE TABLE sheep (
id serial4 PRIMARY KEY,
color varchar(150),
dog_id integer
);

SCHEMA
IN config.rb:
ActiveRecord::Base.establish_connection(
  :adapter  => "postgresql",
  :database => "dog_sheep"
)

class Dog < ActiveRecord::Base
  has_many :sheep
end

class Sheep < ActiveRecord::Base
  belongs_to :dog
end

Dog.create ({name: 'Shep', breed: 'Collie'}).sheep << Sheep.create({color: 'brownish'})



