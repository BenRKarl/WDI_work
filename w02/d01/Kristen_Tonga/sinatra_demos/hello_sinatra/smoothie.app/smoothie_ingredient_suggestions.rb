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
  'coco powder' => '1 tbsp',
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
  'blue berries' => '1/4 cup',
  'chopped banana' => '1/2 cup',
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}


ingredient_array = smoothie_ingredients.map {|ingredient, measure| "#{ingredient}: #{measure}"}
ingredient_array.sample(num_of_ingredients)
end

get '/' do
  num_of_ingredients = 3
"<h2>Today's Suggested Smoothie Ingredients:</h2>" + random_smoothie(num_of_ingredients).join('<br>')
end

get '/smoothie/:num_of_ingredients' do
  num_of_ingredients = params[:num_of_ingredients].to_i
  "<h2>Today's Smoothie: </h2>" + random_smoothie(num_of_ingredients).join('<br>')
end

=begin
#three_suggestions[a,b,c] = smoothie_ingredients.sample(a, b, c)
#"#{three_suggestions}"

ingredient_keys = smoothie_ingredients.keys.sample(3)
ingredient_keys.enum_with_index.map { |ingredient| "#{ingredient}: #{smoothie_ingredients[ingredient]}"  }
=end
