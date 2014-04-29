require 'sinatra'
require 'sinatra/reloader'

def random_smoothie

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


ingredient_keys = smoothie_ingredients.keys.sample(3)

ingredient_keys.map {|ingredient| "#{ingredient}: <br> #{smoothie_ingredients[ingredient]}"}

end

get '/' do
    "<h2>Today's smoothie: </h2>" + random_smoothie.join(' ')
end



num_of_ingredients = smoothie_ingredients.count
get '/smoothie/:num_of_ingredients' do
    "#{num_of_ingredients}"
end
