require 'sinatra'
require 'sinatra/reloader'

get '/' do

  def random_smoothie
    smoothie_ingredients = {
      'flax seeds' => '2 tbsp',
      'chia seeds' => '1 tbsp',
      'kale' => '4 tbsp',
      'cbroc' = '5 tbsp',
      'mango' => '3 tbsp',
      'milk' => '2 tbsp',
    }

  ingredient_array = smoothie_ingredients.map {|ingredient, measure| "#{ingredient}: #{measure}"}
  ingredient_array.sample(num_of_ingredients)
  end

  get '/' do
    num_of_ingredients = 3
    "<h2>Today's Smoothie: <h2>" + random_smoothie(num_of_ingredients).join('<br>')
  end

end
