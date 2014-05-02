require 'sinatra'
require 'sinatra/reloader'

def rand_smoothie(number)
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

  ingredient_array = smoothie_ingredients.map { |ingredient, measure| 
                     "#{ingredient}: #{measure}" }
  ingredient_array.sample(number)
end  


get '/smoothie' do 
  "<h1>Today's smoothie:</h1><br>" + rand_smoothie(3).join('<br>')    
end

get '/smoothie/:number' do 
  number = params[:number]  
  "<h1>Today's smoothie:</h1><br>" + rand_smoothie(number.to_i).join('<br>')    
end