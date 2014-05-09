#This app will have a list of meal types (breakfast, lunch, dinner, dessert...)
#and a each meal_type will have several recipes.
# example: hamburger -> lunch, pancakes -> breakfast.
#It's assumed that each recipe matches one and only one meal_type.
#No steak for breakfast, no waffles for dinner.

CREATE DATABASE recipes;

/c recipes

CREATE TABLE meal_types
(
  id serial4 PRIMARY KEY,
  meal_name VARCHAR(255)
);

CREATE TABLE recipes
(
  id serial4 PRIMARY KEY,
  recipe_name VARCHAR(255),
  meal_type_id INTEGER
);  
