require 'sinatra'
require 'sinatra/reloader'

# get '/' do
#   smoothie_ingredients = {
#     'flax seeds' => '1 tbsp',
#     'chia seeds' => '1 tbsp',
#     'coconut flakes' => '1 tbsp',
#     'spirulina' => '1 tsp',
#     'pumpkin seeds' => '1 tbsp',
#     'oatmeal' => '1/4 cup',
#     'cocoa powder' => '1 tbsp',
#     'peanut butter' => '1 tbsp',
#     'almonds' => '1/4 cup',
#     'walnuts' => '1/4 cup',
#     'spinach' => '1/4 cup',
#     'greek yogurt' => '1/4 cup',
#     'nutrional yeast' => '1 tbsp',
#     'brussel sprouts' => '1/4 cup',
#     'asparagus' => '1/4 cup',
#     'kale' => '1/4 cup',
#     'brocoli rabe' => '1/4 cup',
#     'blueberries' => '1/4 cup',
#     'chopped banana' => '1/2 cup',
#     'strawberries' => '1/4 cup',
#     'mango' => '1/4 cup',
#     'hemp milk' => '1 cup'
#   }
#
#   today = []
#   smoothie_ingredients.each {|k,v| today<<"#{k} #{v}"}
#   "<h1>Today's smoothie:</h1> #{today.shuffle.first}<br> #{today.shuffle.pop}<br> #{today.shuffle.pop}"
# end
#
def random_smoothie(num)
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
  ingredient_keys = smoothie_ingredients.keys.sample(num)
  ingredient_keys.map {|ingredient| "#{ingredient}: #{smoothie_ingredients[ingredient]}"}
end

get '/' do
  "Today's Smoothie: " + random_smoothie.join(' ')
end

get '/smoothie/:num_of_ingredients' do
num_of_ingredients = params[:num_of_ingredients].to_i

"<h1>Today's smoothie:</h1> #{random_smoothie(num_of_ingredients).join('<br>')}"
end
