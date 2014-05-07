require sinatra
require 'sinatra_reloader'

ingredient_keys = smoothie_indgredients.keys.sample(3)
ingredient_keys.map {|ingredient| "#{ingredient}: #{smoothie_indgredients[ingredient]}"}
end


def random_smoothie_b
	smoothie_indgredients = {
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

ingredient_array = smoothie_ingredients.map {|ingredient, measure|, "#{ingredient}: #{measure}"}
ingredient_array.sample(3)
end

get '/smootie/:num_of_ingredients' do
	num_of_ingredients = params[:num_of_ingredients].to_i
	"<h2>Today's Smoothie: </h2>" + random_smoothie_b(num_of_ingredients).join( <br> )
end
