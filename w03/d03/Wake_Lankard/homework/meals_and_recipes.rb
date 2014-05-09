require 'pg'
require 'active_record'

#connect to DB
database_name = "recipes"
ActiveRecord::Base.establish_connection("postgres://localhost/#{database_name}")

#Models
class Meal_type < ActiveRecord::Base
  has_many :recipes

  def to_s
    "#{@name}"
  end

end

class Recipe < ActiveRecord::Base
  belongs_to :meal_types

  def to_s
    @name
  end

end

#Mutations!
breakfast = Meal_type.create({ meal_name: 'breakfast'})
brunch = Meal_type.create({meal_name: "brunch"})
lunch = Meal_type.create({meal_name: "lunch"})
dinner = Meal_type.create({meal_name: "dinner"})

pancakes = Recipe.create({recipe_name: "pancakes"})
waffles = Recipe.new({recipe_name: "waffles"})
ham_sandwich = Recipe.new({recipe_name: "ham sandwich"})
eggs_benny = Recipe.new({recipe_name: "eggs benny"})
hossenfeffer = Recipe.new({recipe_name: "hossenfeffer"})


breakfast.recipes << pancakes
breakfast.recipes << waffles
brunch.recipes << eggs_benny
lunch.recipes << ham_sandwich
dinner.recipes << hossenfeffer

puts breakfast.meal_name
breakfast.recipes.each { |recipe| puts recipe.recipe_name }

puts brunch.meal_name
brunch.recipes.each { |recipe| puts recipe.recipe_name }

puts lunch.meal_name
lunch.recipes.each{ |recipe| puts recipe.recipe_name }

puts dinner.meal_name
dinner.recipes.each{ |recipe| puts recipe.recipe_name }
