#A half-assed app to create meal types and assign recipes 
#to them.  I got a crazy error when I tried to 
#edit, and decided to call it a night.
#But it should work so far, though it's packed
#with inconsitencies.

#Also, I appreciate that my idea of assigning recipes to
#unique meals is pretty far from reality.  Seemed like
#a good idea at the time, but got dumber and dumber as 
#went on, but became to late to go back.

require 'bundler'
Bundler.require

require_relative 'models/meal_type'
require_relative 'models/recipe'
require_relative 'config.rb'



#index
get '/' do
  @meal_types= Meal_type.all
  erb :index
end

#new meal type
get '/meal/new' do
    
  erb :'/meal/new'
end

#create meal type
post '/meal' do    
  meal_name = params[:meal_name]
  new_meal_type = Meal_type.create({meal_name: meal_name})

  redirect "/meal/#{ new_meal_type.id }"


end

#show meal type
get '/meal/:id' do   
  @meal_type = Meal_type.find(params[:id])
  erb :'/meal/show'
end

#new recipe
get '/meal/:id/recipe/new' do  
  @meal_type = Meal_type.find(params[:id])

  erb :'recipe/new'
end

#create recipe
post '/meal/:id/recipe' do 
  new_recipe = Recipe.create({recipe_name: params[:recipe_name]})
  meal_type = Meal_type.find(params[:id])

  meal_type.recipes << new_recipe

  redirect "/meal/#{ params[:id]}"
end

# #edit recipe
# get 'meal/:meal_id/recipe/:recipe_id'
# @meal_type = Meal_type.find(params[:meal_id])
# @recipe_type = Recipe.find(params[:recipe_id])

#   erb :'recipe/edit'

# #put recipe
# put 'meal/:meal_id/recipe/:recipe_id'
# recipe = Recipe.find(params[:recipe_id])
# recipe.recipe_name = params[:recipe_name]
# recipe.save
# redirect "/meal/#{ params[:meal_id]}/recipe/#{ recipe.recipe_id}"


#delete recipe

