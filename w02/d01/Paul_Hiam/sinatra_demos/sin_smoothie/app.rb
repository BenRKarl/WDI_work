require 'sinatra'
require 'sinatra/reloader'
#
#
#def smooth_of_day
#smoothie_ingredients = {
#    'flax seeds' => '1 tbsp',
#    'chia seeds' => '1 tbsp',
#    'coconut flakes' => '1 tbsp',
#    'spirulina' => '1 tsp',
#    'pumpkin seeds' => '1 tbsp',
#    'oatmeal' => '1/4 cup',
#    'cocoa powder' => '1 tbsp',
#    'peanut butter' => '1 tbsp',
#    'almonds' => '1/4 cup',
#    'walnuts' => '1/4 cup',
#    'spinach' => '1/4 cup',
#    'greek yogurt' => '1/4 cup',
#    'nutrional yeast' => '1 tbsp',
#    'brussel sprouts' => '1/4 cup',
#    'asparagus' => '1/4 cup',
#    'kale' => '1/4 cup',
#    'brocoli rabe' => '1/4 cup',
#    'blueberries' => '1/4 cup',
#    'chopped banana' => '1/2 cup',
#    'strawberries' => '1/4 cup',
#    'mango' => '1/4 cup',
#    'hemp milk' => '1 cup'
#  }
#
#  
#    
#   # skey = smoothie_ingredients.keys.sample
#    #ykey = smoothie_ingredients.keys.sample
#     ingredarray = smoothie_ingredients.map {|ingr, meas| "#{#ingr} : #{meas}"}
#ingredarray.sample(3)
#end
#get '/' do 
#    "Recipe" + smooth_of_day.join(" ")
#    
#    
## "Today's Smoothie Recipe: #{skey} #{smoothie_ingredients[#skey]} ; #{ykey} #{smoothie_ingredients[skey]}  "
#
#
#  end


def smooth_of_day
smoothie_ingredients = {
    'flax seeds' => '1 tbsp',
    'chia seeds' => '1 tbsp',
    'coconut flakes' => '1 tbsp',
    'spirulina' => '1 tsp',
    'pumpkin seeds' => '1 tbsp',
    'oatmeal' => '1/4 cup',
    'cocoa powder' => '1 tbsp',
    'peanut butter' => '1 tbsp',
    'almonds' => '1/4 cup',
    'walnuts' => '1/4 cup',
    'spinach' => '1/4 cup',
    'greek yogurt' => '1/4 cup',
    'nutrional yeast' => '1 tbsp',
    'brussel sprouts' => '1/4 cup',
    'asparagus' => '1/4 cup',
    'kale' => '1/4 cup',
    'brocoli rabe' => '1/4 cup',
    'blueberries' => '1/4 cup',
    'chopped banana' => '1/2 cup',
    'strawberries' => '1/4 cup',
    'mango' => '1/4 cup',
    'hemp milk' => '1 cup'
  }



ingredarray = smoothie_ingredients.map {|ingr, meas| "#{ingr} : #{meas}"}
ingredarray.sample(3)
end
get '/' do 
    "Recipe" + smooth_of_day.join(" ")
  end


